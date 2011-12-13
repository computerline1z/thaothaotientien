namespace VoucherReport
{
    partial class CustomerInfoForm
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
            this.CustomerTabControl = new System.Windows.Forms.TabControl();
            this.voucherTab = new System.Windows.Forms.TabPage();
            this.orderTab = new System.Windows.Forms.TabPage();
            this.cardTab = new System.Windows.Forms.TabPage();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton3 = new System.Windows.Forms.RadioButton();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.voucherGridView = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cardGridView = new System.Windows.Forms.DataGridView();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.orderGridView = new System.Windows.Forms.DataGridView();
            this.label8 = new System.Windows.Forms.Label();
            this.dateTimePicker3 = new System.Windows.Forms.DateTimePicker();
            this.button3 = new System.Windows.Forms.Button();
            this.cusInfoTab = new System.Windows.Forms.TabPage();
            this.CustomerTabControl.SuspendLayout();
            this.voucherTab.SuspendLayout();
            this.orderTab.SuspendLayout();
            this.cardTab.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.voucherGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orderGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // CustomerTabControl
            // 
            this.CustomerTabControl.Controls.Add(this.voucherTab);
            this.CustomerTabControl.Controls.Add(this.orderTab);
            this.CustomerTabControl.Controls.Add(this.cardTab);
            this.CustomerTabControl.Controls.Add(this.cusInfoTab);
            this.CustomerTabControl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CustomerTabControl.Location = new System.Drawing.Point(0, 12);
            this.CustomerTabControl.Name = "CustomerTabControl";
            this.CustomerTabControl.SelectedIndex = 0;
            this.CustomerTabControl.Size = new System.Drawing.Size(637, 503);
            this.CustomerTabControl.TabIndex = 0;
            // 
            // voucherTab
            // 
            this.voucherTab.Controls.Add(this.voucherGridView);
            this.voucherTab.Controls.Add(this.button1);
            this.voucherTab.Controls.Add(this.textBox1);
            this.voucherTab.Controls.Add(this.groupBox1);
            this.voucherTab.Controls.Add(this.label1);
            this.voucherTab.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.voucherTab.Location = new System.Drawing.Point(4, 25);
            this.voucherTab.Name = "voucherTab";
            this.voucherTab.Padding = new System.Windows.Forms.Padding(3);
            this.voucherTab.Size = new System.Drawing.Size(629, 474);
            this.voucherTab.TabIndex = 0;
            this.voucherTab.Text = "Phiếu mua hàng";
            this.voucherTab.UseVisualStyleBackColor = true;
            // 
            // orderTab
            // 
            this.orderTab.Controls.Add(this.button3);
            this.orderTab.Controls.Add(this.dateTimePicker3);
            this.orderTab.Controls.Add(this.label8);
            this.orderTab.Controls.Add(this.orderGridView);
            this.orderTab.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.orderTab.Location = new System.Drawing.Point(4, 25);
            this.orderTab.Name = "orderTab";
            this.orderTab.Padding = new System.Windows.Forms.Padding(3);
            this.orderTab.Size = new System.Drawing.Size(629, 474);
            this.orderTab.TabIndex = 1;
            this.orderTab.Text = "Phiếu giao hàng";
            this.orderTab.UseVisualStyleBackColor = true;
            // 
            // cardTab
            // 
            this.cardTab.Controls.Add(this.label7);
            this.cardTab.Controls.Add(this.label6);
            this.cardTab.Controls.Add(this.cardGridView);
            this.cardTab.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cardTab.Location = new System.Drawing.Point(4, 25);
            this.cardTab.Name = "cardTab";
            this.cardTab.Size = new System.Drawing.Size(629, 474);
            this.cardTab.TabIndex = 2;
            this.cardTab.Text = "Thẻ nạp";
            this.cardTab.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(67, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã phiếu";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.button2);
            this.groupBox1.Controls.Add(this.dateTimePicker2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.radioButton3);
            this.groupBox1.Controls.Add(this.radioButton2);
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Location = new System.Drawing.Point(52, 61);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(509, 142);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Tìm kiếm";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(18, 21);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(80, 20);
            this.radioButton1.TabIndex = 0;
            this.radioButton1.Text = "Hôm nay";
            this.radioButton1.UseVisualStyleBackColor = true;
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(163, 21);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(98, 20);
            this.radioButton2.TabIndex = 1;
            this.radioButton2.Text = "Trong tháng";
            this.radioButton2.UseVisualStyleBackColor = true;
            // 
            // radioButton3
            // 
            this.radioButton3.AutoSize = true;
            this.radioButton3.Location = new System.Drawing.Point(18, 60);
            this.radioButton3.Name = "radioButton3";
            this.radioButton3.Size = new System.Drawing.Size(64, 20);
            this.radioButton3.TabIndex = 2;
            this.radioButton3.Text = "Tất cả";
            this.radioButton3.UseVisualStyleBackColor = true;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(148, 62);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(129, 22);
            this.dateTimePicker1.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(107, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(24, 16);
            this.label2.TabIndex = 4;
            this.label2.Text = "Từ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(308, 68);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 16);
            this.label3.TabIndex = 5;
            this.label3.Text = "Đến";
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(357, 63);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(129, 22);
            this.dateTimePicker2.TabIndex = 6;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(162, 19);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 22);
            this.textBox1.TabIndex = 3;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(306, 18);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 4;
            this.button1.Text = "Tra cứu";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(222, 101);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 7;
            this.button2.Text = "Tìm";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // voucherGridView
            // 
            this.voucherGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.voucherGridView.Location = new System.Drawing.Point(52, 237);
            this.voucherGridView.Name = "voucherGridView";
            this.voucherGridView.Size = new System.Drawing.Size(509, 183);
            this.voucherGridView.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(674, 53);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(218, 31);
            this.label4.TabIndex = 1;
            this.label4.Text = "Tài khoản (VND)";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(760, 99);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(39, 42);
            this.label5.TabIndex = 2;
            this.label5.Text = "0";
            // 
            // cardGridView
            // 
            this.cardGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.cardGridView.Location = new System.Drawing.Point(35, 46);
            this.cardGridView.Name = "cardGridView";
            this.cardGridView.Size = new System.Drawing.Size(544, 331);
            this.cardGridView.TabIndex = 0;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(349, 404);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(107, 16);
            this.label6.TabIndex = 1;
            this.label6.Text = "Tổng tiền (VND):";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(488, 404);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(15, 16);
            this.label7.TabIndex = 2;
            this.label7.Text = "0";
            // 
            // orderGridView
            // 
            this.orderGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.orderGridView.Location = new System.Drawing.Point(51, 133);
            this.orderGridView.Name = "orderGridView";
            this.orderGridView.Size = new System.Drawing.Size(522, 272);
            this.orderGridView.TabIndex = 0;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(64, 50);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(70, 16);
            this.label8.TabIndex = 1;
            this.label8.Text = "Ngày mua";
            // 
            // dateTimePicker3
            // 
            this.dateTimePicker3.Location = new System.Drawing.Point(164, 45);
            this.dateTimePicker3.Name = "dateTimePicker3";
            this.dateTimePicker3.Size = new System.Drawing.Size(200, 22);
            this.dateTimePicker3.TabIndex = 2;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(393, 43);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 23);
            this.button3.TabIndex = 3;
            this.button3.Text = "Tìm";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // cusInfoTab
            // 
            this.cusInfoTab.Location = new System.Drawing.Point(4, 25);
            this.cusInfoTab.Name = "cusInfoTab";
            this.cusInfoTab.Size = new System.Drawing.Size(629, 474);
            this.cusInfoTab.TabIndex = 3;
            this.cusInfoTab.Text = "Tài khoản";
            this.cusInfoTab.UseVisualStyleBackColor = true;
            // 
            // CustomerInfoForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(902, 514);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.CustomerTabControl);
            this.Name = "CustomerInfoForm";
            this.Text = "CustomerInfoForm";
            this.CustomerTabControl.ResumeLayout(false);
            this.voucherTab.ResumeLayout(false);
            this.voucherTab.PerformLayout();
            this.orderTab.ResumeLayout(false);
            this.orderTab.PerformLayout();
            this.cardTab.ResumeLayout(false);
            this.cardTab.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.voucherGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cardGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orderGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl CustomerTabControl;
        private System.Windows.Forms.TabPage voucherTab;
        private System.Windows.Forms.TabPage orderTab;
        private System.Windows.Forms.TabPage cardTab;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.RadioButton radioButton3;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.DataGridView voucherGridView;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView cardGridView;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.DateTimePicker dateTimePicker3;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView orderGridView;
        private System.Windows.Forms.TabPage cusInfoTab;
    }
}