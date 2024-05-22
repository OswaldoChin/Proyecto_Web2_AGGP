namespace Proyecto_Web2_Aguilar_Chino_Gonzales_Perez.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("usuario")]
    public partial class usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public usuario()
        {
            transferencias = new HashSet<transferencia>();
            transferencias1 = new HashSet<transferencia>();
        }

        [Key]
        public int id_usuario { get; set; }

        [Column("usuario")]
        [Required]
        [StringLength(100)]
        public string usuario1 { get; set; }

        [StringLength(50)]
        public string clave { get; set; }

        [StringLength(9)]
        public string celular { get; set; }

        public int? tipo_usuario { get; set; }

        public virtual tipo_usuario tipo_usuario1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<transferencia> transferencias { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<transferencia> transferencias1 { get; set; }
    }
}
