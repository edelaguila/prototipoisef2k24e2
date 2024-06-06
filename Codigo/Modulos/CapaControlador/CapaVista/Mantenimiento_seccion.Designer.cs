
namespace CapaVista
{
    partial class Mantenimiento_seccion
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
            this.txt_codFacultad = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.txt_estatus = new System.Windows.Forms.TextBox();
            this.txt_nombrefacultad = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.navegador1 = new Navegador2._0.Navegador();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_codFacultad
            // 
            this.txt_codFacultad.Location = new System.Drawing.Point(259, 208);
            this.txt_codFacultad.Name = "txt_codFacultad";
            this.txt_codFacultad.Size = new System.Drawing.Size(131, 22);
            this.txt_codFacultad.TabIndex = 12;
            this.txt_codFacultad.Tag = "codigo_seccion";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(259, 179);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(124, 17);
            this.label2.TabIndex = 11;
            this.label2.Text = "Código de seccion";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(259, 258);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(488, 150);
            this.dataGridView1.TabIndex = 10;
            this.dataGridView1.Tag = "facultades";
            // 
            // txt_estatus
            // 
            this.txt_estatus.Location = new System.Drawing.Point(798, 298);
            this.txt_estatus.Name = "txt_estatus";
            this.txt_estatus.Size = new System.Drawing.Size(43, 22);
            this.txt_estatus.TabIndex = 9;
            this.txt_estatus.Tag = "estatus_seccion";
            this.txt_estatus.Text = "1";
            this.txt_estatus.Visible = false;
            this.txt_estatus.TextChanged += new System.EventHandler(this.txt_estatus_TextChanged);
            // 
            // txt_nombrefacultad
            // 
            this.txt_nombrefacultad.Location = new System.Drawing.Point(427, 208);
            this.txt_nombrefacultad.Name = "txt_nombrefacultad";
            this.txt_nombrefacultad.Size = new System.Drawing.Size(308, 22);
            this.txt_nombrefacultad.TabIndex = 8;
            this.txt_nombrefacultad.Tag = "nombre_seccion";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(513, 179);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(145, 17);
            this.label1.TabIndex = 7;
            this.label1.Text = "Nombre de la seccion";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(13, 33);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1001, 96);
            this.navegador1.TabIndex = 13;
            // 
            // Mantenimiento_seccion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1039, 450);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.txt_codFacultad);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.txt_estatus);
            this.Controls.Add(this.txt_nombrefacultad);
            this.Controls.Add(this.label1);
            this.Name = "Mantenimiento_seccion";
            this.Text = "Mantenimiento_seccion";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_codFacultad;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox txt_estatus;
        private System.Windows.Forms.TextBox txt_nombrefacultad;
        private System.Windows.Forms.Label label1;
        private Navegador2._0.Navegador navegador1;
    }
}