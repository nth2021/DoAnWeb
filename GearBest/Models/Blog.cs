//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GearBest.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Blog
    {
        public long ID { get; set; }
        public Nullable<System.DateTime> DateImport { get; set; }
        public string Title { get; set; }
        public string ShortTitle { get; set; }
        public string Picture { get; set; }
        public string Describe { get; set; }
    }
}