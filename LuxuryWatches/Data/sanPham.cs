//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LuxuryWatches.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class sanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public sanPham()
        {
            this.chiTietDHs = new HashSet<chiTietDH>();
        }
    
        public int maSP { get; set; }
        public string maLoai { get; set; }
        public string maHangSX { get; set; }
        public string tenSP { get; set; }
        public string ndTomTat { get; set; }
        public string tkThanhVien { get; set; }
        public int giaBan { get; set; }
        public Nullable<int> daGiamGia { get; set; }
        public int soLuong { get; set; }
        public string biDanh { get; set; }
        public string hinhDaiDien { get; set; }
        public int soHinhKem { get; set; }
        public string ndSanPham { get; set; }
        public string mauSac { get; set; }
        public string kichCo { get; set; }
        public Nullable<int> danhGia { get; set; }
        public int soLanQT { get; set; }
        public int soLanGD { get; set; }
        public System.DateTime ngayDangSP { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chiTietDH> chiTietDHs { get; set; }
        public virtual HangSanXuat HangSanXuat { get; set; }
        public virtual loaiSP loaiSP { get; set; }
        public virtual taiKhoan taiKhoan { get; set; }
    }
}
