﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RHP.Common
{
   public class Soroity
    {
       public int SoroityId { get; set; }
       public string SoroityName { get; set; }
       public string SoroityCode { get; set; }
        public string Description { get; set; }
        public Guid? CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public Guid? UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool IsDeleted { get; set; }
    }
}
