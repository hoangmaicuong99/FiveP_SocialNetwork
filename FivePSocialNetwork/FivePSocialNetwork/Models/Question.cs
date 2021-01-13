//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FivePSocialNetwork.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Question
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Question()
        {
            this.Answers = new HashSet<Answer>();
            this.Notifications = new HashSet<Notification>();
            this.Rate_Question = new HashSet<Rate_Question>();
            this.Show_Activate_Question = new HashSet<Show_Activate_Question>();
            this.Tags_Question = new HashSet<Tags_Question>();
            this.Teachnology_Question = new HashSet<Teachnology_Question>();
            this.Tick_Question = new HashSet<Tick_Question>();
            this.View_Question = new HashSet<View_Question>();
        }
    
        public int question_id { get; set; }
        public string question_content { get; set; }
        public Nullable<System.DateTime> question_dateCreate { get; set; }
        public Nullable<System.DateTime> question_dateEdit { get; set; }
        public Nullable<int> user_id { get; set; }
        public Nullable<bool> question_activate { get; set; }
        public string question_title { get; set; }
        public Nullable<int> question_Answer { get; set; }
        public Nullable<int> question_totalComment { get; set; }
        public Nullable<int> question_view { get; set; }
        public Nullable<int> question_totalRate { get; set; }
        public Nullable<int> question_medalCalculator { get; set; }
        public Nullable<bool> question_recycleBin { get; set; }
        public Nullable<bool> question_userStatus { get; set; }
        public Nullable<int> question_popular { get; set; }
        public Nullable<bool> question_admin_recycleBin { get; set; }
        public string question_keywordSearch { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Answer> Answers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Notification> Notifications { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rate_Question> Rate_Question { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Show_Activate_Question> Show_Activate_Question { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tags_Question> Tags_Question { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Teachnology_Question> Teachnology_Question { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tick_Question> Tick_Question { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<View_Question> View_Question { get; set; }
    }
}
