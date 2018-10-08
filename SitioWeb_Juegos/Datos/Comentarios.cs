//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Comentarios
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Comentarios()
        {
            this.ComentariosDenunciados = new HashSet<ComentariosDenunciados>();
        }
    
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Contenido { get; set; }
        public System.DateTime FechaPublicacion { get; set; }
        public string Autor { get; set; }
        public int Post { get; set; }
        public int IdEstado { get; set; }
        public Nullable<bool> Eliminado { get; set; }
    
        public virtual AspNetUsers AspNetUsers { get; set; }
        public virtual Estados Estados { get; set; }
        public virtual Posts Posts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ComentariosDenunciados> ComentariosDenunciados { get; set; }
    }
}
