//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuegoSennas_SitoWeb.Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class CONTENIDOS
    {
        public int IdContenido { get; set; }
        public int IdTipo { get; set; }
        public string Titulo { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Texto { get; set; }
        public Nullable<int> IdUsuario { get; set; }
        public Nullable<int> IdReseña { get; set; }
        public Nullable<int> IdComentario { get; set; }
        public Nullable<int> Puntaje { get; set; }
        public int IdEstado { get; set; }
        public int IdCategoria { get; set; }
    
        public virtual CATEGORIAS_JUEGOS CATEGORIAS_JUEGOS { get; set; }
        public virtual ESTADOS_CONTENIDO ESTADOS_CONTENIDO { get; set; }
        public virtual TIPOS_CONTENIDOS TIPOS_CONTENIDOS { get; set; }
    }
}
