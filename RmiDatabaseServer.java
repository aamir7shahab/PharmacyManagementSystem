
import java.util.*;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RmiDatabaseServer extends UnicastRemoteObject implements RmiDatabaseInterface {

    public RmiDatabaseServer() throws RemoteException {
        super();
    }

    @Override
    public List<PharmacyTable> searchResult(String searchText, String searchParameter) throws RemoteException {

        List<PharmacyTable> list = new ArrayList<>();
        try {
            Connection con;
            con = DB_Connection.connect();
            
            Statement stmt = con.createStatement();
            
            String SearchText = searchText;
            String SearchParameter = searchParameter;
            
            String SearchQuery = null;
            
            if (SearchParameter.equals("1")) {

                SearchQuery = "SELECT M_Name,M_Composition,M_Quantity,M_Rate "
                        + "FROM PharmacyMedicine "
                        + "WHERE M_Name='" + SearchText + "';";
            } else if (SearchParameter.equals("2")) {
                SearchQuery = "SELECT M_Name, M_Composition, M_Quantity, M_Rate "
                        + "FROM PharmacyMedicine "
                        + "WHERE M_Composition='" + SearchText + "';";
            } else if (SearchParameter.equals("3")) {
                SearchQuery = "SELECT M_Name, M_Composition, M_Quantity, M_Rate "
                        + "FROM PharmacyMedicine  PM "
                        + "INNER JOIN  PharmacyMedicineDisease  PMD "
                        + "ON PM.M_Id=PMD.M_Id  "
                        + "WHERE (PMD.M_Disease1= '" + SearchText + "') OR "
                        + "(PMD.M_Disease2= '" + SearchText + "') OR"
                        + "(PMD.M_Disease3= '" + SearchText + "') OR"
                        + "(PMD.M_Disease4= '" + SearchText + "');";

            } else {
                SearchQuery = "SELECT M_Name, M_Composition, M_Quantity, M_Rate "
                        + "FROM PharmacyMedicine "
                        + "where M_Name='" + SearchText + "';";
            }

            ResultSet rs1 = stmt.executeQuery(SearchQuery);
            while (rs1.next()) {
                PharmacyTable pT = new PharmacyTable();
                
                pT.setMedName(rs1.getString("M_Name"));
                pT.setMedComposition(rs1.getString("M_Composition"));
                pT.setQuantAvailable(rs1.getString("M_Quantity"));
                pT.setPharmacyStoreName(rs1.getString("M_Name"));
                pT.setMedRate(rs1.getString("M_Rate"));
                pT.setAddOnMap(rs1.getString("M_Name"));
                
                list.add(pT);

            }
        } catch (SQLException e) {
        }
        return list;
    }

    public static void main(String args[]) {
        try {
            Registry reg = LocateRegistry.createRegistry(35353);
            reg.rebind("server", new RmiDatabaseServer());
            System.out.println("Server has Started");
        } catch (RemoteException e) {
            System.out.println(e);
        }
    }

}
