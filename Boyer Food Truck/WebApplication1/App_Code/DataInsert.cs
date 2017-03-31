using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
/// <summary>
/// Summary description for DataInsert
/// </summary>
public class DataInsert
{
    public DataInsert()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int InsertCustomer(string name)
    {
        DataAccess myAccess = new DataAccess();
        SqlParameter[] parameters = new SqlParameter[1];

        parameters[0] = new SqlParameter("name", name);
        
        string query = "spInsertCustomer";
        int rows = myAccess.nonQuery(query, parameters);
        return rows;
    }

    public int InsertOrder(int itemNum, string itemName)
    {
        DataAccess myAccess = new DataAccess();
        SqlParameter[] parameters = new SqlParameter[2];
        
        parameters[0] = new SqlParameter("itemNum", itemNum);
        parameters[1] = new SqlParameter("itemName", itemName);

        string query = "spInsertOrder";
        int rows = myAccess.nonQuery(query, parameters);
        return rows;
    }

       
    private Byte[] encrypt(string unencryptedString)
    {
        // encrypt password before inserted..
        Byte[] hashedDataBytes = null;
        UTF8Encoding encoder = new UTF8Encoding();

        MD5CryptoServiceProvider md5Hasher = new MD5CryptoServiceProvider();

        hashedDataBytes = md5Hasher.ComputeHash(encoder.GetBytes(unencryptedString));

        return hashedDataBytes;
    }

    public int InsertUser(string username, string pwd)

    {
        DataAccess myAccess = new DataAccess();
        SqlParameter[] parameters = new SqlParameter[2];

        parameters[0] = new SqlParameter("username", username);
        parameters[1] = new SqlParameter("pwd", encrypt(pwd));

        string query = "spInsertUser";
        int rows = myAccess.nonQuery(query, parameters);
        return rows;
    }

    public int authenticateUser(string username, string pwd)

    {
        DataAccess myAccess = new DataAccess();
        SqlParameter[] parameters = new SqlParameter[2];

        parameters[0] = new SqlParameter("username", username);
        parameters[1] = new SqlParameter("pwd", encrypt(pwd));

        string query = "spAuthenticateUser";
        int rows = myAccess.executeScalar(query, parameters);
        return rows;
    }

    public int InsertComment(string text)

    {
        DataAccess myAccess = new DataAccess();
        SqlParameter[] parameters = new SqlParameter[1];

        parameters[0] = new SqlParameter("text",text);
        

        string query = "spInsertComment";
        int rows = myAccess.nonQuery(query, parameters);
        return rows;
    }
}