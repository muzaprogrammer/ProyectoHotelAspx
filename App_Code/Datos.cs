using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Datos
/// </summary>
public static class Datos
{
    static public string cadena = @"Data Source=.;Initial Catalog=HOTEL;Integrated Security=True";
    static private string consulta = "";
    static private SqlConnection cn = new SqlConnection(cadena);
    static private SqlCommand cmd;
    private static DataSet ds;
    private static DataTable da;
    private static SqlDataAdapter dap;

    public static bool loger(string u, string p)
    {
        bool resp = false;
        consulta = "select count(*) from EMPLEADOS where EMP_USER=@u and EMP_PASWORD=@p";
        cmd = new SqlCommand(consulta, cn);
        cmd.Parameters.AddWithValue("@u", u);
        cmd.Parameters.AddWithValue("@p", p);
        try
        {
            cn.Open();
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n == 1)
            {
                resp = true;
                
            }
            cn.Close();
        }
        catch 
        {
            resp = false;
        }
        return resp;
    }
    public static List<Course> GetCourses()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("select * from CLIENTES INNER JOIN GENERO ON CLIENTES.CLI_GENERO = GENERO.GEN_ID;", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var courses = new List<Course>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Course()
            {
                ID = (int)dataRow["CLI_ID"],
                Name = (string)dataRow["CLI_NOMBRES"]+" "+ (string)dataRow["CLI_APELLIDOS"],
                tipo = (string)dataRow["CLI_TIPO_DOCUMENTO"],
                doc = (string)dataRow["CLI_N_DOCUMENTO"],
                fecha = (string)Convert.ToString(dataRow["CLI_FECHA_NAC"]),
                genero = (string)dataRow["GENERO"],
                telefono = (string)dataRow["CLI_TELEFONO"],
                pais = (string)dataRow["CLI_PAIS"],
                email = (string)dataRow["CLI_EMAIL"],

            };
            courses.Add(course);
        }

        return courses;
    }
    public static List<Course> GetCourses(string buscar)
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();
            using (var sqlCommand = new SqlCommand("select * from CLIENTES INNER JOIN GENERO ON CLIENTES.CLI_GENERO = GENERO.GEN_ID where  CLI_NOMBRES like '" + '%' + buscar + '%' + "' OR CLI_APELLIDOS like '" + '%' + buscar + '%' + "' OR CLI_N_DOCUMENTO like '" + '%'  + buscar + '%' + "' OR CLI_TELEFONO like '" + '%' + buscar + '%' + "'  ", sqlConnection))
            {   
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var courses = new List<Course>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Course()
            {
                ID = (int)dataRow["CLI_ID"],
                Name = (string)dataRow["CLI_NOMBRES"] + " " + (string)dataRow["CLI_APELLIDOS"],
                tipo = (string)dataRow["CLI_TIPO_DOCUMENTO"],
                doc = (string)dataRow["CLI_N_DOCUMENTO"],
                fecha = (string)Convert.ToString(dataRow["CLI_FECHA_NAC"]),
                genero = (string)dataRow["GENERO"],
                telefono = (string)dataRow["CLI_TELEFONO"],
                pais = (string)dataRow["CLI_PAIS"],
                email = (string)dataRow["CLI_EMAIL"],

            };
            courses.Add(course);
        }

        return courses;
    }
    public static List<Empleados> GetEmpleados()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("select * from EMPLEADOS INNER JOIN GENERO ON EMPLEADOS.EMP_GENERO = GENERO.GEN_ID INNER JOIN ACCESO ON ACCESO.ACC_ID=EMPLEADOS.EMP_ACCESO INNER JOIN TURNOS ON TURNOS.TUR_ID=EMPLEADOS.EMP_TURNO", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var empleados = new List<Empleados>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Empleados()
            {
                ID = (int)dataRow["EMP_ID"],
                Nombre = (string)dataRow["EMP_NOMBRES"] + " " + (string)dataRow["EMP_APELLIDOS"],
                tipo = (string)dataRow["EMP_TIPO_DOCUMENTO"],
                doc = (string)dataRow["EMP_N_DOCUMENTO"],
                direccion = (string)dataRow["EMP_DIRECCION"],
                fecha = (string)Convert.ToString(dataRow["EMP_FECHA_NAC"]),
                fechaingreso = (string)Convert.ToString(dataRow["EMP_FECHA_INGRESO"]),
                sueldo = (string)Convert.ToString(dataRow["EMP_SUELDO"]),
                genero = (string)dataRow["GENERO"],
                telefono = (string)(dataRow["EMP_TELEFONO"]),
                turno = (string)dataRow["TURNO"],
                user = (string)dataRow["EMP_USER"],
                pasword = (string)dataRow["EMP_PASWORD"],
                acceso = (string)dataRow["ACC_TIPO"],

            };
            empleados.Add(course);
        }

        return empleados;
    }
    public static List<Empleados> GetEmpleados(string buscar)
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("select * from EMPLEADOS INNER JOIN GENERO ON EMPLEADOS.EMP_GENERO = GENERO.GEN_ID INNER JOIN ACCESO ON ACCESO.ACC_ID=EMPLEADOS.EMP_ACCESO INNER JOIN TURNOS ON TURNOS.TUR_ID=EMPLEADOS.EMP_TURNO where  EMP_NOMBRES like '" + '%' + buscar + '%' + "' OR EMP_APELLIDOS like '" + '%' + buscar + '%' + "' OR EMP_N_DOCUMENTO like '" + '%' + buscar + '%' + "' OR EMP_TELEFONO like '" + '%' + buscar + '%' + "'  ", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var empleados = new List<Empleados>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Empleados()
            {
                ID = (int)dataRow["EMP_ID"],
                Nombre = (string)dataRow["EMP_NOMBRES"] + " " + (string)dataRow["EMP_APELLIDOS"],
                tipo = (string)dataRow["EMP_TIPO_DOCUMENTO"],
                doc = (string)dataRow["EMP_N_DOCUMENTO"],
                direccion = (string)dataRow["EMP_DIRECCION"],
                fecha = (string)Convert.ToString(dataRow["EMP_FECHA_NAC"]),
                fechaingreso = (string)Convert.ToString(dataRow["EMP_FECHA_INGRESO"]),
                sueldo = (string)Convert.ToString(dataRow["EMP_SUELDO"]),
                genero = (string)dataRow["GENERO"],
                telefono = (string)(dataRow["EMP_TELEFONO"]),
                turno = (string)dataRow["TURNO"],
                user = (string)dataRow["EMP_USER"],
                pasword = (string)dataRow["EMP_PASWORD"],
                acceso = (string)dataRow["ACC_TIPO"],

            };
            empleados.Add(course);
        }

        return empleados;
    }
    public static List<Reservas> GetBuscarReservas(string buscar)
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();            
            using (var sqlCommand = new SqlCommand("SELECT RES_ID, HAB_NUM, CLIENTES.CLI_NOMBRES AS NOMBRE, CLI_APELLIDOS AS APELLIDO, FECHA_RESERVACION, CHECKIN, CHECKOUT, N_NOCHES, COSTO_TOTAL, OBSERVACIONES, ESTADO FROM RESERVA INNER JOIN CLIENTES ON RESERVA.CLI_ID = CLIENTES.CLI_ID INNER JOIN HABITACIONES ON RESERVA.HAB_ID = HABITACIONES.HAB_ID WHERE (CLI_NOMBRES LIKE '" + '%' + buscar + '%' + "' OR CLI_APELLIDOS LIKE '" + '%' + buscar + '%' + "') AND ESTADO = 2", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var empleados = new List<Reservas>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Reservas()
            {
                id = (string)Convert.ToString(dataRow["RES_ID"]),
                hab = (string)Convert.ToString(dataRow["HAB_NUM"]),
                nombre = (string)dataRow["NOMBRE"],
                apellido = (string)dataRow["APELLIDO"],
                fecha = (string)Convert.ToString(dataRow["FECHA_RESERVACION"]),
                checkin = (string)Convert.ToString(dataRow["CHECKIN"]),
                checkout = (string)Convert.ToString(dataRow["CHECKOUT"]),
                noches = (string)Convert.ToString(dataRow["N_NOCHES"]),
                costo = (string)Convert.ToString(dataRow["COSTO_TOTAL"]),
                observaciones = (string)dataRow["OBSERVACIONES"],
            };
            empleados.Add(course);
        }

        return empleados;
    }    
    public static List<Habitaciones> GetHabitaciones()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("SELECT * FROM HABITACIONES INNER JOIN TIPO_HAB ON HABITACIONES.TIPO_ID=TIPO_HAB.TIPO_ID", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var habitaciones = new List<Habitaciones>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Habitaciones()
            {                
                numero = (int)dataRow["HAB_NUM"],
                piso = (int)dataRow["HAB_PISO"],
                tipo = (int)dataRow["HAB_NUM"],
                nombre = (string)dataRow["TIPO_NOMBRE"],
                camas = (int)dataRow["TIPO_CAMAS"],
                costo = (string)Convert.ToString(dataRow["COSTO"]),
            };
            habitaciones.Add(course);
        }

        return habitaciones;
    }
    public static List<Habitaciones> GetHabitacionesDisponibles()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("SELECT  DISTINCT * FROM HABITACIONES INNER JOIN TIPO_HAB ON HABITACIONES.TIPO_ID=TIPO_HAB.TIPO_ID WHERE HABITACIONES.HAB_ID Not In (SELECT DISTINCT RESERVA.HAB_ID FROM RESERVA WHERE CONVERT(nvarchar(10),GETDATE(),112) <= CHECKIN AND DATEADD(DAY,1,CONVERT(nvarchar(10),GETDATE(),112)) > CHECKIN OR CONVERT(nvarchar(10),GETDATE(),112) < CHECKOUT AND DATEADD(DAY,1,CONVERT(nvarchar(10),GETDATE(),112)) > CHECKOUT OR CONVERT(nvarchar(10),GETDATE(),112) >= CHECKIN AND DATEADD(DAY,1,CONVERT(nvarchar(10),GETDATE(),112)) <= CHECKOUT)", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var habitaciones = new List<Habitaciones>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Habitaciones()
            {
                numero = (int)dataRow["HAB_NUM"],
                piso = (int)dataRow["HAB_PISO"],
                tipo = (int)dataRow["HAB_NUM"],
                nombre = (string)dataRow["TIPO_NOMBRE"],
                camas = (int)dataRow["TIPO_CAMAS"],
                costo = (string)Convert.ToString(dataRow["COSTO"]),
            };
            habitaciones.Add(course);
        }

        return habitaciones;
    }    
    public static List<Habitaciones> GetHabitacionesCheckin()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("SELECT CONCAT(CLI_NOMBRES,' ', CLI_APELLIDOS) AS NOMBRE, HAB_NUM  FROM RESERVA INNER JOIN CLIENTES ON CLIENTES.CLI_ID= RESERVA.CLI_ID INNER JOIN HABITACIONES ON HABITACIONES.HAB_ID = RESERVA.HAB_ID WHERE CHECKIN = CONVERT(nvarchar(10), GETDATE(), 112) AND ESTADO = 2", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var habitaciones = new List<Habitaciones>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Habitaciones()
            {
                numero = (int)dataRow["HAB_NUM"],
                nombre = (string)dataRow["NOMBRE"],                
            };
            habitaciones.Add(course);
        }

        return habitaciones;
    }
    public static List<Habitaciones> GetHabitacionesCheckout()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("SELECT CONCAT(CLI_NOMBRES,' ', CLI_APELLIDOS) AS NOMBRE, HAB_NUM  FROM RESERVA INNER JOIN CLIENTES ON CLIENTES.CLI_ID= RESERVA.CLI_ID INNER JOIN HABITACIONES ON HABITACIONES.HAB_ID = RESERVA.HAB_ID WHERE CHECKOUT = CONVERT(nvarchar(10), GETDATE(), 112) AND ESTADO=3", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var habitaciones = new List<Habitaciones>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Habitaciones()
            {
                numero = (int)dataRow["HAB_NUM"],
                nombre = (string)dataRow["NOMBRE"],
            };
            habitaciones.Add(course);
        }

        return habitaciones;
    }
    public static List<Habitaciones> GetHabitacionesOcupadas()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("SELECT CONCAT(CLI_NOMBRES,' ', CLI_APELLIDOS) AS NOMBRE, HAB_NUM  FROM RESERVA INNER JOIN CLIENTES ON CLIENTES.CLI_ID= RESERVA.CLI_ID INNER JOIN HABITACIONES ON HABITACIONES.HAB_ID = RESERVA.HAB_ID WHERE CONVERT(nvarchar(10),GETDATE(),112) >= CHECKIN AND CONVERT(nvarchar(10),GETDATE(),112) < CHECKOUT AND ESTADO>2", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var habitaciones = new List<Habitaciones>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Habitaciones()
            {
                numero = (int)dataRow["HAB_NUM"],
                nombre = (string)dataRow["NOMBRE"],
            };
            habitaciones.Add(course);
        }

        return habitaciones;
    }
    public static List<Notas> GetNotas()
    {
        var dataTable = new DataTable();


        using (var sqlConnection = new SqlConnection(Datos.cadena))
        {
            sqlConnection.Open();

            using (var sqlCommand = new SqlCommand("SELECT TOP 60 CONCAT(EMP_NOMBRES,' ', EMP_APELLIDOS) AS NOMBRE, FECHA, NOTA FROM NOTAS INNER JOIN EMPLEADOS ON EMPLEADOS.EMP_ID=NOTAS.EMP ORDER BY ID DESC", sqlConnection))
            {
                using (var sqlReader = sqlCommand.ExecuteReader())
                {
                    dataTable.Load(sqlReader);
                }
            }
        }

        var habitaciones = new List<Notas>();

        foreach (DataRow dataRow in dataTable.Rows)
        {
            var course = new Notas()
            {
                nombre = (string)dataRow["NOMBRE"],
                nota = (string)dataRow["NOTA"],
                fecha = Convert.ToDateTime(dataRow["FECHA"])
            };
            habitaciones.Add(course);
        }

        return habitaciones;
    }

    public static DataSet LeerUsuarios(string u)
    {
        consulta = "select * from EMPLEADOS where EMP_USER=@u ";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consulta, cn);
        cmd.Parameters.AddWithValue("@u", u);
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    
    public static DataSet LlenarGridEmpleados(string busco)
    {
        consulta = "select CONCAT (EMP_NOMBRES, ' ', EMP_APELLIDOS) as Nombre, CONCAT (EMP_TIPO_DOCUMENTO, ' ', EMP_N_DOCUMENTO) as Documento, EMP_FECHA_NAC as Nacimiento, EMP_TELEFONO as Telefono, ACC_TIPO as Acceso from EMPLEADOS INNER JOIN ACCESO ON EMPLEADOS.EMP_ACCESO = ACCESO.ACC_ID where EMP_NOMBRES like @busco";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consulta, cn);        
        cmd.Parameters.AddWithValue("@busco", "%" + busco + "%");
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public static bool InsertarCliente(string nombre, string apellido, string tipo, string doc, DateTime fecha, int genero, string telefono, string pais,string email)
    {
        bool result;
        string consult = "insert into CLIENTES values(@CLI_NOMBRES, @CLI_APELLIDOS, @CLI_TIPO_DOCUMENTO, @CLI_N_DOCUMENTO,@CLI_FECHA_NACIMIENTO, @CLI_GENERO, @CLI_TELEFONO, @CLI_PAIS, @CLI_EMAIL)";
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@CLI_NOMBRES", nombre);
        cmd.Parameters.AddWithValue("@CLI_APELLIDOS", apellido);
        cmd.Parameters.AddWithValue("@CLI_TIPO_DOCUMENTO", tipo);
        cmd.Parameters.AddWithValue("@CLI_N_DOCUMENTO", doc);
        cmd.Parameters.AddWithValue("@CLI_FECHA_NACIMIENTO", fecha);
        cmd.Parameters.AddWithValue("@CLI_GENERO", genero);
        cmd.Parameters.AddWithValue("@CLI_TELEFONO", telefono);
        cmd.Parameters.AddWithValue("@CLI_PAIS", pais);
        cmd.Parameters.AddWithValue("@CLI_EMAIL", email);

        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        return result;
    }
    public static bool EditarReserva(int hab, DateTime checkin, DateTime checkout, int noches, double costo, string observaciones, int res)
    {
        bool result;
        string consult = "UPDATE RESERVA SET HAB_ID = @hab, CHECKIN= @checkin, CHECKOUT=@checkout, N_NOCHES=@noches, COSTO_TOTAL=@costo, OBSERVACIONES=@observaciones WHERE RES_ID=@res";
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@hab", hab);
        cmd.Parameters.AddWithValue("@checkin", checkin);
        cmd.Parameters.AddWithValue("@checkout", checkout);
        cmd.Parameters.AddWithValue("@noches", noches);
        cmd.Parameters.AddWithValue("@costo", costo);
        cmd.Parameters.AddWithValue("@observaciones", observaciones);
        cmd.Parameters.AddWithValue("@res", res);
        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        return result;
    }
    public static bool InsertarEmpleado(string nombre, string apellido, string tipo, string doc, string direccion, DateTime fecha, DateTime fechaingreso, double sueldo, int genero, string telefono, int turno, string user, string pass, int acceso)
    {
        bool result;
        string consult = "insert into EMPLEADOS values(@EMP_NOMBRES, @EMP_APELLIDOS, @EMP_TIPO_DOCUMENTO, @EMP_N_DOCUMENTO, @EMP_DIRECCION, @EMP_FECHA_NACIMIENTO, @EMP_FECHA_INGRESO, @EMP_SUELDO, @EMP_GENERO, @EMP_TELEFONO, @EMP_TURNO, @EMP_USER, @EMP_PASWORD, @EMP_ACCESO)";
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@EMP_NOMBRES", nombre);
        cmd.Parameters.AddWithValue("@EMP_APELLIDOS", apellido);
        cmd.Parameters.AddWithValue("@EMP_TIPO_DOCUMENTO", tipo);
        cmd.Parameters.AddWithValue("@EMP_N_DOCUMENTO", doc);
        cmd.Parameters.AddWithValue("@EMP_DIRECCION", direccion);
        cmd.Parameters.AddWithValue("@EMP_FECHA_NACIMIENTO", fecha);
        cmd.Parameters.AddWithValue("@EMP_FECHA_INGRESO", fechaingreso);
        cmd.Parameters.AddWithValue("@EMP_SUELDO", sueldo);
        cmd.Parameters.AddWithValue("@EMP_GENERO", genero);
        cmd.Parameters.AddWithValue("@EMP_TELEFONO", telefono);
        cmd.Parameters.AddWithValue("@EMP_TURNO", turno);
        cmd.Parameters.AddWithValue("@EMP_USER", user);
        cmd.Parameters.AddWithValue("@EMP_PASWORD", pass);
        cmd.Parameters.AddWithValue("@EMP_ACCESO", acceso);

        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        return result;
    }
    public static bool InsertarNota(string nota, int emp)
    {
        bool result;
        string consult = "insert into NOTAS values (GETDATE(), @nota, @emp)";
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@nota", nota);
        cmd.Parameters.AddWithValue("@emp", emp);
        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        return result;
    }
    public static bool InsertReserva(int hab, int cli, int emp, DateTime fecha, DateTime checkin, DateTime checkout, int noches, double costo, string observ, int estado)
    {
        bool result;
        string consult = "insert into RESERVA values(@hab, @cli, @emp, @fecha, @checkin, @checkout, @noches, @costo, @observ, @estado)";
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@hab", hab);
        cmd.Parameters.AddWithValue("@cli", cli);
        cmd.Parameters.AddWithValue("@emp", emp);
        cmd.Parameters.AddWithValue("@fecha", fecha);
        cmd.Parameters.AddWithValue("@checkin", checkin);
        cmd.Parameters.AddWithValue("@checkout", checkout);
        cmd.Parameters.AddWithValue("@noches", noches);
        cmd.Parameters.AddWithValue("@costo", costo);
        cmd.Parameters.AddWithValue("@observ", observ);
        cmd.Parameters.AddWithValue("@estado", estado);
        try
        {
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        return result;
    }
    public static DataSet ListarHabitaciones(DateTime inicio, DateTime fin)
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT  DISTINCT * FROM HABITACIONES WHERE HABITACIONES.HAB_ID Not In (SELECT DISTINCT RESERVA.HAB_ID FROM RESERVA WHERE ";
        consult += "@FECHA_INICIO <= CHECKIN AND @FECHA_FIN > CHECKIN OR ";
        consult += "@FECHA_INICIO < CHECKOUT AND @FECHA_FIN > CHECKOUT OR ";
        consult += "@FECHA_INICIO >= CHECKIN AND @FECHA_FIN <= CHECKOUT)";        
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@FECHA_INICIO", inicio);
        cmd.Parameters.AddWithValue("@FECHA_FIN", fin);
        dap = new SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet();
        cn.Open();
        dap.Fill(ds);
        cn.Close();
        return ds;

    }
    public static DataSet ListarHabitaciones2(DateTime inicio, DateTime fin, int id)
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT  DISTINCT * FROM HABITACIONES WHERE HABITACIONES.HAB_ID Not In (SELECT DISTINCT RESERVA.HAB_ID FROM RESERVA WHERE ";
        consult += "(@FECHA_INICIO <= CHECKIN AND @FECHA_FIN > CHECKIN OR ";
        consult += "@FECHA_INICIO < CHECKOUT AND @FECHA_FIN > CHECKOUT OR ";
        consult += "@FECHA_INICIO >= CHECKIN AND @FECHA_FIN <= CHECKOUT) AND RES_ID = @ID)";
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@FECHA_INICIO", inicio);
        cmd.Parameters.AddWithValue("@FECHA_FIN", fin);
        cmd.Parameters.AddWithValue("@ID", id);
        dap = new SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet();
        cn.Open();
        dap.Fill(ds);
        cn.Close();
        return ds;

    }
    public static DataSet Preciohab(int hab)
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT * FROM HABITACIONES INNER JOIN TIPO_HAB ON HABITACIONES.TIPO_ID = TIPO_HAB.TIPO_ID WHERE HAB_ID = @HAB_ID";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consult, cn);
        cmd.Parameters.AddWithValue("@HAB_ID", hab);
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public static DataSet habcheckin()
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT COUNT (HAB_ID) AS NUM FROM RESERVA WHERE CHECKIN = CONVERT(nvarchar(10), GETDATE(), 112) AND ESTADO = 2";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consult, cn);        
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public static DataSet habcheckout()
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT COUNT (HAB_ID) AS NUM FROM RESERVA WHERE CHECKOUT = CONVERT(nvarchar(10), GETDATE(), 112) AND ESTADO = 3";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consult, cn);
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public static DataSet habdisponibles()
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT  DISTINCT COUNT (HAB_ID) AS NUM FROM HABITACIONES WHERE HABITACIONES.HAB_ID Not In (SELECT DISTINCT RESERVA.HAB_ID FROM RESERVA WHERE CONVERT(nvarchar(10),GETDATE(),112) <= CHECKIN AND DATEADD(DAY,1,CONVERT(nvarchar(10),GETDATE(),112)) > CHECKIN OR CONVERT(nvarchar(10),GETDATE(),112) < CHECKOUT AND DATEADD(DAY,1,CONVERT(nvarchar(10),GETDATE(),112)) > CHECKOUT OR CONVERT(nvarchar(10),GETDATE(),112) >= CHECKIN AND DATEADD(DAY,1,CONVERT(nvarchar(10),GETDATE(),112)) <= CHECKOUT) ";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consult, cn);
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public static DataSet habocupadas()
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT COUNT (HAB_ID) AS NUM FROM RESERVA WHERE CONVERT(nvarchar(10),GETDATE(),112) >= CHECKIN AND CONVERT(nvarchar(10),GETDATE(),112) < CHECKOUT AND ESTADO>2";
        SqlDataAdapter da = new SqlDataAdapter();
        cmd = new SqlCommand(consult, cn);
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }
    public static DataSet ListarClientes()
    {
        cn = new SqlConnection(cadena);
        string consult = "select CONCAT (CLI_NOMBRES,' ', CLI_APELLIDOS, ', TIPO DOCUMENTO: ', CLI_TIPO_DOCUMENTO, ', NUMERO DOCUMENTO: ', CLI_N_DOCUMENTO, ', FECHA DE NACIMIENTO: ',  CLI_FECHA_NAC) AS NOMBRE, CLI_ID from CLIENTES order by CLI_NOMBRES asc ";
        cmd = new SqlCommand(consult, cn);        
        dap = new SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet();
        cn.Open();
        dap.Fill(ds);
        cn.Close();
        return ds;

    }
    public static DataSet ListarReservas()
    {
        cn = new SqlConnection(cadena);
        string consult = "SELECT RES_ID, CONCAT('CLIENTE: ', CLIENTES.CLI_NOMBRES, ' ', CLI_APELLIDOS, ', FECHA: ', FECHA_RESERVACION,', CHECKIN: ', CHECKIN,', CHECKOUT ', CHECKOUT,', NOCHES ', N_NOCHES) AS NOMBRE FROM RESERVA INNER JOIN CLIENTES ON RESERVA.CLI_ID = CLIENTES.CLI_ID INNER JOIN HABITACIONES ON RESERVA.HAB_ID = HABITACIONES.HAB_ID WHERE ESTADO = 2 ORDER BY RES_ID DESC";
        cmd = new SqlCommand(consult, cn);
        dap = new SqlDataAdapter();
        dap.SelectCommand = cmd;
        ds = new DataSet();
        cn.Open();
        dap.Fill(ds);
        cn.Close();
        return ds;

    }
}
public class Course
{
    public int ID { get; set; }
    public string Name { get; set; }
    public string tipo { get; set; }
    public string doc { get; set; }
    public string fecha { get; set; }    
    public string genero { get; set; }
    public string telefono { get; set; }
    public string pais { get; set; }
    public string email { get; set; }
}
public class Empleados
{
    public int ID { get; set; }
    public string Nombre { get; set; }
    public string tipo { get; set; }
    public string doc { get; set; }
    public string direccion { get; set; }
    public string fecha { get; set; }
    public string fechaingreso { get; set; }
    public string sueldo { get; set; }
    public string genero { get; set; }
    public string telefono { get; set; }
    public string turno { get; set; }
    public string user { get; set; }
    public string pasword { get; set; }
    public string acceso { get; set; }

}
public class Habitaciones
{
    public int ID { get; set; }
    public int numero { get; set; }
    public int piso { get; set; }
    public int tipo { get; set; }
    public string nombre { get; set; }
    public int camas { get; set; }
    public string costo { get; set; }
}
public class Notas
{
    public string nombre { get; set; }
    public string nota { get; set; }
    public DateTime fecha { get; set; }

}
public class Reservas
{
    public string id { get; set; }
    public string hab { get; set; }
    public string nombre{ get; set; }
    public string apellido { get; set; }
    public string  fecha { get; set; }
    public string checkin { get; set; }
    public string checkout { get; set; }
    public string noches { get; set; }
    public string costo { get; set; }
    public string observaciones { get; set; }
    public string estado { get; set; }

}
