trigger DefaultEntitlement on Case (Before Update) {
    List <CasePriority> casePriority = 
        if(casePriority = 'P1'){
            List <Entitlement> entls = [Select e.StartDate, e.Id
                    From Entitlement e
                    Where e.StartDate <= Today];
            if(entls.isEmpty()==false){
                for(Case c : Trigger.new){
                    if(c.EntitlementId == null){
                        for(Entitlement e:entls){
                            }
                        } 
                    }
                } 
            }
        }
    } 
}


Trigger updateFields on Test_Object__c (before update){
  for (Test_Object__c obj: trigger.new){
    field_1__c = field_2__c;
  }


Trigger CheckFieldValues on Case (before insert) {
 
List<Entitlement> entList = [Select Id,Name from Entitlement where Name = 'P1 Incident' limit 1];
 
for (Case c : Trigger.new) {
    if (c.Priority == 'P1')
        c.EntitlementId = entList[0].Id;
    }
}
