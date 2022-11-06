CREATE NONCLUSTERED INDEX I_ImportantOrderInfo  ON Orders (TargetLocation);
CREATE NONCLUSTERED INDEX ImportantOrderInfo2  ON Orders (DayofOrder);
CREATE NONCLUSTERED INDEX ImportantOrderInfo3  ON Orders (SourceLocation);
CREATE NONCLUSTERED INDEX ImportantOrderInfo4  ON Orders (PickUpTime,DeliveryTime);
