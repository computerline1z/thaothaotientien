namespace OrderManagement
{
    partial class Form1
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
            this.label1 = new System.Windows.Forms.Label();
            this.orderIdLbl = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.todayRBut = new System.Windows.Forms.RadioButton();
            this.weekRBut = new System.Windows.Forms.RadioButton();
            this.monthRBut = new System.Windows.Forms.RadioButton();
            this.allRBut = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.fromDtPicker = new System.Windows.Forms.DateTimePicker();
            this.toDtPicker = new System.Windows.Forms.DateTimePicker();
            this.OrderGridView = new System.Windows.Forms.DataGridView();
            this.saveBut = new System.Windows.Forms.Button();
            this.deleteBut = new System.Windows.Forms.Button();
            this.viewBut = new System.Windows.Forms.Button();
            this.printBut = new System.Windows.Forms.Button();
            this.orderIdTxtBox = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.reportBut = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OrderGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(377, 9);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(259, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "PHIẾU GIAO HÀNG";
            // 
            // orderIdLbl
            // 
            this.orderIdLbl.AutoSize = true;
            this.orderIdLbl.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.orderIdLbl.Location = new System.Drawing.Point(79, 87);
            this.orderIdLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.orderIdLbl.Name = "orderIdLbl";
            this.orderIdLbl.Size = new System.Drawing.Size(81, 16);
            this.orderIdLbl.TabIndex = 1;
            this.orderIdLbl.Text = "Mã số phiếu";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.reportBut);
            this.groupBox1.Controls.Add(this.toDtPicker);
            this.groupBox1.Controls.Add(this.fromDtPicker);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.allRBut);
            this.groupBox1.Controls.Add(this.monthRBut);
            this.groupBox1.Controls.Add(this.weekRBut);
            this.groupBox1.Controls.Add(this.todayRBut);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(71, 145);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBox1.Size = new System.Drawing.Size(821, 156);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Tra cứu";
            // 
            // todayRBut
            // 
            this.todayRBut.AutoSize = true;
            this.todayRBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.todayRBut.Location = new System.Drawing.Point(68, 36);
            this.todayRBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.todayRBut.Name = "todayRBut";
            this.todayRBut.Size = new System.Drawing.Size(80, 20);
            this.todayRBut.TabIndex = 0;
            this.todayRBut.Text = "Hôm nay";
            this.todayRBut.UseVisualStyleBackColor = true;
            // 
            // weekRBut
            // 
            this.weekRBut.AutoSize = true;
            this.weekRBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.weekRBut.Location = new System.Drawing.Point(267, 36);
            this.weekRBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.weekRBut.Name = "weekRBut";
            this.weekRBut.Size = new System.Drawing.Size(82, 20);
            this.weekRBut.TabIndex = 1;
            this.weekRBut.Text = "Tuần này";
            this.weekRBut.UseVisualStyleBackColor = true;
            // 
            // monthRBut
            // 
            this.monthRBut.AutoSize = true;
            this.monthRBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.monthRBut.Location = new System.Drawing.Point(475, 36);
            this.monthRBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.monthRBut.Name = "monthRBut";
            this.monthRBut.Size = new System.Drawing.Size(90, 20);
            this.monthRBut.TabIndex = 2;
            this.monthRBut.Text = "Tháng này";
            this.monthRBut.UseVisualStyleBackColor = true;
            // 
            // allRBut
            // 
            this.allRBut.AutoSize = true;
            this.allRBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.allRBut.Location = new System.Drawing.Point(68, 94);
            this.allRBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.allRBut.Name = "allRBut";
            this.allRBut.Size = new System.Drawing.Size(64, 20);
            this.allRBut.TabIndex = 3;
            this.allRBut.Text = "Tất cả";
            this.allRBut.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(216, 94);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(24, 16);
            this.label3.TabIndex = 4;
            this.label3.Text = "Từ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(471, 94);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(32, 16);
            this.label4.TabIndex = 5;
            this.label4.Text = "Đến";
            // 
            // fromDtPicker
            // 
            this.fromDtPicker.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.fromDtPicker.Location = new System.Drawing.Point(267, 89);
            this.fromDtPicker.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.fromDtPicker.Name = "fromDtPicker";
            this.fromDtPicker.Size = new System.Drawing.Size(140, 22);
            this.fromDtPicker.TabIndex = 6;
            // 
            // toDtPicker
            // 
            this.toDtPicker.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toDtPicker.Location = new System.Drawing.Point(531, 86);
            this.toDtPicker.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.toDtPicker.Name = "toDtPicker";
            this.toDtPicker.Size = new System.Drawing.Size(140, 22);
            this.toDtPicker.TabIndex = 7;
            // 
            // OrderGridView
            // 
            this.OrderGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.OrderGridView.Location = new System.Drawing.Point(71, 322);
            this.OrderGridView.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.OrderGridView.Name = "OrderGridView";
            this.OrderGridView.Size = new System.Drawing.Size(821, 228);
            this.OrderGridView.TabIndex = 3;
            // 
            // saveBut
            // 
            this.saveBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.saveBut.Location = new System.Drawing.Point(163, 578);
            this.saveBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.saveBut.Name = "saveBut";
            this.saveBut.Size = new System.Drawing.Size(100, 28);
            this.saveBut.TabIndex = 4;
            this.saveBut.Text = "Lưu";
            this.saveBut.UseVisualStyleBackColor = true;
            // 
            // deleteBut
            // 
            this.deleteBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.deleteBut.Location = new System.Drawing.Point(329, 578);
            this.deleteBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.deleteBut.Name = "deleteBut";
            this.deleteBut.Size = new System.Drawing.Size(100, 28);
            this.deleteBut.TabIndex = 5;
            this.deleteBut.Text = "Xóa";
            this.deleteBut.UseVisualStyleBackColor = true;
            // 
            // viewBut
            // 
            this.viewBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.viewBut.Location = new System.Drawing.Point(495, 578);
            this.viewBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.viewBut.Name = "viewBut";
            this.viewBut.Size = new System.Drawing.Size(100, 28);
            this.viewBut.TabIndex = 6;
            this.viewBut.Text = "Xem chi tiết";
            this.viewBut.UseVisualStyleBackColor = true;
            // 
            // printBut
            // 
            this.printBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.printBut.Location = new System.Drawing.Point(673, 578);
            this.printBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.printBut.Name = "printBut";
            this.printBut.Size = new System.Drawing.Size(100, 28);
            this.printBut.TabIndex = 7;
            this.printBut.Text = "In";
            this.printBut.UseVisualStyleBackColor = true;
            // 
            // orderIdTxtBox
            // 
            this.orderIdTxtBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.orderIdTxtBox.Location = new System.Drawing.Point(207, 78);
            this.orderIdTxtBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.orderIdTxtBox.Name = "orderIdTxtBox";
            this.orderIdTxtBox.Size = new System.Drawing.Size(132, 22);
            this.orderIdTxtBox.TabIndex = 8;
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(427, 78);
            this.button1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 28);
            this.button1.TabIndex = 9;
            this.button1.Text = "Tra cứu";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // reportBut
            // 
            this.reportBut.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.reportBut.Location = new System.Drawing.Point(356, 134);
            this.reportBut.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.reportBut.Name = "reportBut";
            this.reportBut.Size = new System.Drawing.Size(100, 28);
            this.reportBut.TabIndex = 8;
            this.reportBut.Text = "Thống kê";
            this.reportBut.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(977, 655);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.orderIdTxtBox);
            this.Controls.Add(this.printBut);
            this.Controls.Add(this.viewBut);
            this.Controls.Add(this.deleteBut);
            this.Controls.Add(this.saveBut);
            this.Controls.Add(this.OrderGridView);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.orderIdLbl);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "Form1";
            this.Text = "Form1";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.OrderGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label orderIdLbl;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button reportBut;
        private System.Windows.Forms.DateTimePicker toDtPicker;
        private System.Windows.Forms.DateTimePicker fromDtPicker;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.RadioButton allRBut;
        private System.Windows.Forms.RadioButton monthRBut;
        private System.Windows.Forms.RadioButton weekRBut;
        private System.Windows.Forms.RadioButton todayRBut;
        private System.Windows.Forms.DataGridView OrderGridView;
        private System.Windows.Forms.Button saveBut;
        private System.Windows.Forms.Button deleteBut;
        private System.Windows.Forms.Button viewBut;
        private System.Windows.Forms.Button printBut;
        private System.Windows.Forms.TextBox orderIdTxtBox;
        private System.Windows.Forms.Button button1;
    }
}

