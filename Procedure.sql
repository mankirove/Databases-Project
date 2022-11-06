Create procedure assignVehicle(
    @OrderNum int
)
as
begin
    set nocount off;
    declare @innerOrderNum int;
    declare @vehicleNumber int;
    declare @availableVehicleNumber int;

    set @innerOrderNum = @OrderNum;

    declare @T table (VINnumber int);
    select distinct VINNumber into #T from TripInfo where OrderID = @innerOrderNum;

    declare VEHICLE_CURSOR cursor fast_forward for 
        select VINnumber 
        from @T;

    open VEHICLE_CURSOR;
    fetch next from VEHICLE_CURSOR into @vehicleNumber;
    
    while @@FETCH_STATUS = 0
    begin
        declare @vehicleType varchar(10) = (select top 1 V.Type from Orders O
        inner join TripInfo T on O.OrderID = T.OrderID
        inner join Vehicles V on V.VINnumber = T.VINnumber
        where DeliveryTime is not NULL
        and T.VINnumber = @vehicleNumber);
		    
        if @vehicleType is not NULL
        begin
            set @availableVehicleNumber  = (select top 1 V.VINnumber from Vehicles V
            inner join TripInfo T ON T.VINnumber = V.VINnumber
            inner join Orders O ON O.OrderID = T.OrderID
            where O.DeliveryTime IS NULL
            and V.[Type] = @vehicleType);
			
            if @availableVehicleNumber is not NULL
            begin
                Update TripInfo
                set VINnumber = @availableVehicleNumber
                where VINnumber = @vehicleNumber;
            end
            else
            begin
                Update Orders 
                Set Delay = 1
                from Orders O
                inner join TripInfo T on T.OrderID = O.OrderID
                where T.VINnumber = @vehicleNumber
            end
        end
        fetch next from VEHICLE_CURSOR INTO @vehicleNumber;
    end

    close VEHICLE_CURSOR;
end

exec assignVehicle @OrderNum=1002

--DROP PROCEDURE assignVehicle
Select * from Orders
Select * from TripInfo