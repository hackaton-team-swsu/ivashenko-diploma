//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Iwaschenko_Palace.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Photo
    {
        public int IdPhoto { get; set; }
        public Nullable<int> IdEvent { get; set; }
    
        public virtual Event Event { get; set; }
    }
}