using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Proyecto_Web2_Aguilar_Chino_Gonzales_Perez.Models
{
    public partial class ModeloSistema : DbContext
    {
        public ModeloSistema()
            : base("name=ModeloSistema")
        {
        }

        public virtual DbSet<estado_transferencia> estado_transferencia { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<tipo_usuario> tipo_usuario { get; set; }
        public virtual DbSet<total_moneda> total_moneda { get; set; }
        public virtual DbSet<transferencia> transferencias { get; set; }
        public virtual DbSet<usuario> usuarios { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<estado_transferencia>()
                .Property(e => e.estado)
                .IsUnicode(false);

            modelBuilder.Entity<estado_transferencia>()
                .HasMany(e => e.transferencias)
                .WithOptional(e => e.estado_transferencia)
                .HasForeignKey(e => e.estado);

            modelBuilder.Entity<tipo_usuario>()
                .Property(e => e.tipo)
                .IsUnicode(false);

            modelBuilder.Entity<tipo_usuario>()
                .HasMany(e => e.usuarios)
                .WithOptional(e => e.tipo_usuario1)
                .HasForeignKey(e => e.tipo_usuario);

            modelBuilder.Entity<total_moneda>()
                .Property(e => e.total_moneda1)
                .HasPrecision(10, 2);

            modelBuilder.Entity<transferencia>()
                .Property(e => e.cantidad)
                .HasPrecision(10, 2);

            modelBuilder.Entity<usuario>()
                .Property(e => e.usuario1)
                .IsUnicode(false);

            modelBuilder.Entity<usuario>()
                .Property(e => e.clave)
                .IsUnicode(false);

            modelBuilder.Entity<usuario>()
                .Property(e => e.celular)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<usuario>()
                .Property(e => e.saldo)
                .HasPrecision(10, 2);

            modelBuilder.Entity<usuario>()
                .HasMany(e => e.transferencias)
                .WithOptional(e => e.usuario)
                .HasForeignKey(e => e.id_emisor);

            modelBuilder.Entity<usuario>()
                .HasMany(e => e.transferencias1)
                .WithOptional(e => e.usuario1)
                .HasForeignKey(e => e.id_receptor);
        }
    }
}
