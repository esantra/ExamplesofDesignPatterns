public with sharing class AAB_DeveloperLevelFactory {
/** Implements the factory pattern * */
    public static AAB_IDeveloper getInstance(String developerLevel)
    {

        /*
         * Using Reflection
         * */
        //Read Custom setting to get actual class name on basis of developer level

        //here you can see that you will not need to know all the dev levels at design time.
        //you can just add another custom setting with the class name
        Developer_Level__c devLevels = Developer_Level__c.getValues(developerLevel);

        //from custom setting get appropriate class name (your could also use if thens)
        Type t = Type.forName(devLevels.Class_Name__c);

		AAB_IDeveloper retVal = (AAB_IDeveloper)t.newInstance();
        return retVal;

    }
}