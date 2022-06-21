﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Abc.MvcWebUI.Models
{
    public class ShippingDetails
    {
        public string Username { get; set; }
        [Required(ErrorMessage ="Lütfen Adres Başlığı Giriniz")]
        public string AdresBasligi { get; set; }
        [Required(ErrorMessage = "Lütfen Bir Adres Giriniz")]
        public string Adres { get; set; }
        [Required(ErrorMessage = "Lütfen Bir Şehir Giriniz")]
        public string Sehir { get; set; }
        [Required(ErrorMessage = "Lütfen Bir İlçe Giriniz")]
        public string Semt { get; set; }
        [Required(ErrorMessage = "Lütfen Bir Mahalle Giriniz")]
        public string Mahalle { get; set; }
        public string PostaKodu { get; set; }
    }
}