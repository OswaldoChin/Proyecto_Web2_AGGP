namespace Proyecto_Web2_Aguilar_Chino_Gonzales_Perez.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("transferencia")]
    public partial class transferencia
    {
        [Key]
        public int id_transferencia { get; set; }

        public int? id_emisor { get; set; }

        public int? id_receptor { get; set; }

        public decimal? cantidad { get; set; }

        public int? estado { get; set; }

        public DateTime? fecha { get; set; }

        public virtual estado_transferencia estado_transferencia { get; set; }

        public virtual usuario usuario { get; set; }

        public virtual usuario usuario1 { get; set; }
    }
}
