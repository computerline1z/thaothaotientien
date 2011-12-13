namespace VoucherReport
{
    partial class LoginForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.loginBut = new System.Windows.Forms.Button();
            this.usernameLbl = new System.Windows.Forms.Label();
            this.passLbl = new System.Windows.Forms.Label();
            this.usernameTxtbox = new System.Windows.Forms.TextBox();
            this.passTxtbox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // loginBut
            // 
            this.loginBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.loginBut.Location = new System.Drawing.Point(165, 139);
            this.loginBut.Name = "loginBut";
            this.loginBut.Size = new System.Drawing.Size(100, 30);
            this.loginBut.TabIndex = 0;
            this.loginBut.Text = "Đăng nhập";
            this.loginBut.UseVisualStyleBackColor = true;
            this.loginBut.Click += new System.EventHandler(this.button1_Click);
            // 
            // usernameLbl
            // 
            this.usernameLbl.AutoSize = true;
            this.usernameLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.usernameLbl.Location = new System.Drawing.Point(44, 54);
            this.usernameLbl.Name = "usernameLbl";
            this.usernameLbl.Size = new System.Drawing.Size(73, 18);
            this.usernameLbl.TabIndex = 1;
            this.usernameLbl.Text = "Tài khoản";
            this.usernameLbl.Click += new System.EventHandler(this.label1_Click);
            // 
            // passLbl
            // 
            this.passLbl.AutoSize = true;
            this.passLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.passLbl.Location = new System.Drawing.Point(47, 96);
            this.passLbl.Name = "passLbl";
            this.passLbl.Size = new System.Drawing.Size(69, 18);
            this.passLbl.TabIndex = 2;
            this.passLbl.Text = "Mật khẩu";
            // 
            // usernameTxtbox
            // 
            this.usernameTxtbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.usernameTxtbox.Location = new System.Drawing.Point(165, 46);
            this.usernameTxtbox.Name = "usernameTxtbox";
            this.usernameTxtbox.Size = new System.Drawing.Size(100, 24);
            this.usernameTxtbox.TabIndex = 3;
            // 
            // passTxtbox
            // 
            this.passTxtbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.passTxtbox.Location = new System.Drawing.Point(165, 88);
            this.passTxtbox.Name = "passTxtbox";
            this.passTxtbox.Size = new System.Drawing.Size(100, 24);
            this.passTxtbox.TabIndex = 4;
            // 
            // LoginForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(380, 196);
            this.Controls.Add(this.passTxtbox);
            this.Controls.Add(this.usernameTxtbox);
            this.Controls.Add(this.passLbl);
            this.Controls.Add(this.usernameLbl);
            this.Controls.Add(this.loginBut);
            this.Name = "LoginForm";
            this.Text = "Đăng nhập";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button loginBut;
        private System.Windows.Forms.Label usernameLbl;
        private System.Windows.Forms.Label passLbl;
        private System.Windows.Forms.TextBox usernameTxtbox;
        private System.Windows.Forms.TextBox passTxtbox;
    }
}

