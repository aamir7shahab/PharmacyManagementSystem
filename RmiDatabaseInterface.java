
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author aamirshahab
 */
public interface RmiDatabaseInterface extends Remote{
     public List<PharmacyTable> searchResult(String searchText, String searchParameter) throws RemoteException;
}
