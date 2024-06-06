
namespace CapaVista
{
    partial class AsignacionCursos
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
            this.txt_nombre = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cb_carrera = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cb_sede = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cb_seccion = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cb_jornada = new System.Windows.Forms.ComboBox();
            this.cb_aula = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.cb_curso = new System.Windows.Forms.ComboBox();
            this.btn_asignar = new System.Windows.Forms.Button();
            this.dgv = new System.Windows.Forms.DataGridView();
            this.btn_accion = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_nombre
            // 
            this.txt_nombre.Location = new System.Drawing.Point(105, 62);
            this.txt_nombre.Multiline = true;
            this.txt_nombre.Name = "txt_nombre";
            this.txt_nombre.Size = new System.Drawing.Size(175, 30);
            this.txt_nombre.TabIndex = 0;
            this.txt_nombre.TextChanged += new System.EventHandler(this.txt_nombre_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(105, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Codigo Maestro";
            // 
            // cb_carrera
            // 
            this.cb_carrera.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_carrera.FormattingEnabled = true;
            this.cb_carrera.Location = new System.Drawing.Point(334, 62);
            this.cb_carrera.Name = "cb_carrera";
            this.cb_carrera.Size = new System.Drawing.Size(161, 28);
            this.cb_carrera.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(331, 43);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Carrera";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(524, 43);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(36, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Sede";
            // 
            // cb_sede
            // 
            this.cb_sede.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_sede.FormattingEnabled = true;
            this.cb_sede.Location = new System.Drawing.Point(527, 62);
            this.cb_sede.Name = "cb_sede";
            this.cb_sede.Size = new System.Drawing.Size(161, 28);
            this.cb_sede.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(331, 108);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Seccion";
            // 
            // cb_seccion
            // 
            this.cb_seccion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_seccion.FormattingEnabled = true;
            this.cb_seccion.Location = new System.Drawing.Point(334, 127);
            this.cb_seccion.Name = "cb_seccion";
            this.cb_seccion.Size = new System.Drawing.Size(161, 28);
            this.cb_seccion.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(105, 108);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(52, 13);
            this.label5.TabIndex = 7;
            this.label5.Text = "Jornada";
            // 
            // cb_jornada
            // 
            this.cb_jornada.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_jornada.FormattingEnabled = true;
            this.cb_jornada.Location = new System.Drawing.Point(108, 127);
            this.cb_jornada.Name = "cb_jornada";
            this.cb_jornada.Size = new System.Drawing.Size(161, 28);
            this.cb_jornada.TabIndex = 6;
            // 
            // cb_aula
            // 
            this.cb_aula.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_aula.FormattingEnabled = true;
            this.cb_aula.Location = new System.Drawing.Point(527, 127);
            this.cb_aula.Name = "cb_aula";
            this.cb_aula.Size = new System.Drawing.Size(161, 28);
            this.cb_aula.TabIndex = 10;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(524, 108);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(32, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Aula";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(105, 171);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(39, 13);
            this.label7.TabIndex = 13;
            this.label7.Text = "Curso";
            // 
            // cb_curso
            // 
            this.cb_curso.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_curso.FormattingEnabled = true;
            this.cb_curso.Location = new System.Drawing.Point(108, 190);
            this.cb_curso.Name = "cb_curso";
            this.cb_curso.Size = new System.Drawing.Size(161, 28);
            this.cb_curso.TabIndex = 12;
            // 
            // btn_asignar
            // 
            this.btn_asignar.BackColor = System.Drawing.Color.ForestGreen;
            this.btn_asignar.FlatAppearance.BorderSize = 0;
            this.btn_asignar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_asignar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_asignar.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btn_asignar.Location = new System.Drawing.Point(108, 415);
            this.btn_asignar.Name = "btn_asignar";
            this.btn_asignar.Size = new System.Drawing.Size(75, 23);
            this.btn_asignar.TabIndex = 14;
            this.btn_asignar.Text = "Asignar";
            this.btn_asignar.UseVisualStyleBackColor = false;
            this.btn_asignar.Click += new System.EventHandler(this.btn_asignar_Click);
            // 
            // dgv
            // 
            this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv.Location = new System.Drawing.Point(108, 239);
            this.dgv.Name = "dgv";
            this.dgv.Size = new System.Drawing.Size(580, 156);
            this.dgv.TabIndex = 15;
            // 
            // btn_accion
            // 
            this.btn_accion.BackColor = System.Drawing.Color.Red;
            this.btn_accion.FlatAppearance.BorderSize = 0;
            this.btn_accion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_accion.Location = new System.Drawing.Point(255, 43);
            this.btn_accion.Name = "btn_accion";
            this.btn_accion.Size = new System.Drawing.Size(24, 12);
            this.btn_accion.TabIndex = 16;
            this.btn_accion.UseVisualStyleBackColor = false;
            // 
            // AsignacionCursos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btn_accion);
            this.Controls.Add(this.dgv);
            this.Controls.Add(this.btn_asignar);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.cb_curso);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.cb_aula);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cb_seccion);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cb_jornada);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cb_sede);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cb_carrera);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_nombre);
            this.Name = "AsignacionCursos";
            this.Text = "AsignacionCursos";
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txt_nombre;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cb_carrera;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cb_sede;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cb_seccion;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cb_jornada;
        private System.Windows.Forms.ComboBox cb_aula;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cb_curso;
        private System.Windows.Forms.Button btn_asignar;
        private System.Windows.Forms.DataGridView dgv;
        private System.Windows.Forms.Button btn_accion;
    }
}