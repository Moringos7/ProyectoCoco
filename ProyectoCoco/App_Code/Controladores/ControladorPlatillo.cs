using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using Modelos;

/// <summary>
/// Descripción breve de ControladorPlatillo
/// </summary>
public class ControladorPlatillo
{
    CafeteriaPacoEntities BD;
    public ControladorPlatillo()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
        BD = new CafeteriaPacoEntities();
    }

    //CREATE Platillo
    public void CrearPlatillo(Platillo Platillo)
    {
        BD.Platillo.Add(Platillo);
        BD.SaveChanges();
    }
    //READ Platillo
    public List<Platillo> DevolverTablaPlatillo()
    {
        List<Platillo> TablaPlatillo = new List<Platillo>();
        TablaPlatillo = BD.Platillo.ToList<Platillo>();
        return TablaPlatillo;
    }
    //UPDATE Platillo
    public void ModificarPlatillo(int PkPlatillo, Platillo Platillo)
    {
        Platillo Temp = new Platillo();
        Temp = BD.Platillo.Find(PkPlatillo);
        Temp.Nombre = Platillo.Nombre;
        Temp.Precio = Platillo.Precio;
        BD.SaveChanges();
    }
    //DELETE Platillo
    public void BorrarPlatillo(int PkPlatillo)
    {
        BD.Platillo.Remove(BD.Platillo.Find(PkPlatillo));
        BD.SaveChanges();
    }
}
