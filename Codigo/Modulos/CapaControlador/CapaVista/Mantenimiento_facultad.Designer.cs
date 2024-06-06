
namespace CapaVista
{
    partial class Mantenimiento_facultad
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
            this.txt_nombrefacultad = new System.Windows.Forms.TextBox();
            this.navegador1 = new Navegador2._0.Navegador();
            this.txt_estatus = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_codFacultad = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(437, 163);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(147, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre de la facultad";
            // 
            // txt_nombrefacultad
            // 
            this.txt_nombrefacultad.Location = new System.Drawing.Point(351, 192);
            this.txt_nombrefacultad.Name = "txt_nombrefacultad";
            this.txt_nombrefacultad.Size = new System.Drawing.Size(308, 22);
            this.txt_nombrefacultad.TabIndex = 1;
            this.txt_nombrefacultad.Tag = "nombre_facultad";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(13, 22);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1001, 96);
            this.navegador1.TabIndex = 2;
            // 
            // txt_estatus
            // 
            this.txt_estatus.Location = new System.Drawing.Point(728, 192);
            this.txt_estatus.Name = "txt_estatus";
            this.txt_estatus.Size = new System.Drawing.Size(43, 22);
            this.txt_estatus.TabIndex = 3;
            this.txt_estatus.Tag = "estatus_facultad";
            this.txt_estatus.Text = "1";
            this.txt_estatus.Visible = false;
            this.txt_estatus.TextChanged += new System.EventHandler(this.txt_estatus_TextChanged);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(283, 245);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(488, 150);
            this.dataGridView1.TabIndex = 4;
            this.dataGridView1.Tag = "facultades";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(183, 163);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(126, 17);
            this.label2.TabIndex = 5;
            this.label2.Text = "Código de facultad";
            // 
            // txt_codFacultad
            // 
            this.txt_codFacultad.Location = new System.Drawing.Point(183, 192);
            this.txt_codFacultad.Name = "txt_codFacultad";
            this.txt_codFacultad.Size = new System.Drawing.Size(131, 22);
            this.txt_codFacultad.TabIndex = 6;
            this.txt_codFacultad.Tag = "codigo_facultad";
            // 
            // Mantenimiento_facultad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1027, 450);
            this.Controls.Add(this.txt_codFacultad);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.txt_estatus);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.txt_nombrefacultad);
            this.Controls.Add(this.label1);
            this.Name = "Mantenimiento_facultad";
            this.Text = "Mantenimiento_facultad";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_nombrefacultad;
        private Navegador2._0.Navegador navegador1;
        private System.Windows.Forms.TextBox txt_estatus;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_codFacultad;
    }
}