using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace tk_manHinh_thêm_sản_phẩm_quang_cáo_của_doanh_nghiệp_mới
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
