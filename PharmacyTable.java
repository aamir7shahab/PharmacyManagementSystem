
public class PharmacyTable implements java.io.Serializable {

    private String MedName;
    
    public void setMedName(String MedName){
        this.MedName = MedName;
    }
    
    public String getMedName(){
        return MedName;
    }

    
    private String MedComposition;
    
    public void setMedComposition(String MedComposition){
        this.MedComposition = MedComposition;
    } 
    
    public String getMedComposition(){
        return MedComposition;
    }
    
    
    private String QuantAvailable;
    
    public void setQuantAvailable(String QuantAvailable){
        this.QuantAvailable = QuantAvailable;
    } 
    
    public String getQuantAvailable(){
        return QuantAvailable;
    }
    
    
    private String PharmacyStoreName;
    
    public void setPharmacyStoreName(String PharmacyStoreName){
        this.PharmacyStoreName = PharmacyStoreName;
    } 
    
    public String getPharmacyStoreName(){
        return PharmacyStoreName;
    }
    private String MedRate;
    
    public void setMedRate(String MedRate){
        this.MedRate = MedRate;
    } 
    
    public String getMedRate(){
        return MedRate;
    }
    
    
    private String AddOnMap;
    
    public void setAddOnMap(String AddOnMap){
        this.AddOnMap = AddOnMap;
    } 
    
    public String getAddOnMap(){
        return AddOnMap;
    }
}
