namespace InterfaceGrafica
{
    partial class Form1
    {
        private System.ComponentModel.IContainer components = null;
        private System.Windows.Forms.TextBox txtSetpoint;
        private System.Windows.Forms.Button btnEnviar;
        private System.Windows.Forms.Label lblTemperatura;

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
                components.Dispose();
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtSetpoint = new System.Windows.Forms.TextBox();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.lblTemperatura = new System.Windows.Forms.Label();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.SuspendLayout();
            // 
            // txtSetpoint
            // 
            this.txtSetpoint.Location = new System.Drawing.Point(40, 37);
            this.txtSetpoint.Margin = new System.Windows.Forms.Padding(4);
            this.txtSetpoint.Name = "txtSetpoint";
            this.txtSetpoint.Size = new System.Drawing.Size(132, 22);
            this.txtSetpoint.TabIndex = 0;
            this.txtSetpoint.TextChanged += new System.EventHandler(this.txtSetpoint_TextChanged);
            // 
            // btnEnviar
            // 
            this.btnEnviar.Location = new System.Drawing.Point(200, 37);
            this.btnEnviar.Margin = new System.Windows.Forms.Padding(4);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(100, 28);
            this.btnEnviar.TabIndex = 1;
            this.btnEnviar.Text = "Enviar";
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // lblTemperatura
            // 
            this.lblTemperatura.AutoSize = true;
            this.lblTemperatura.Location = new System.Drawing.Point(40, 86);
            this.lblTemperatura.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTemperatura.Name = "lblTemperatura";
            this.lblTemperatura.Size = new System.Drawing.Size(103, 16);
            this.lblTemperatura.TabIndex = 2;
            this.lblTemperatura.Text = "Temperatura: ---";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(332, 121);
            this.Controls.Add(this.lblTemperatura);
            this.Controls.Add(this.btnEnviar);
            this.Controls.Add(this.txtSetpoint);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.Text = "Controle de Temperatura";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private System.IO.Ports.SerialPort serialPort1;
    }
}