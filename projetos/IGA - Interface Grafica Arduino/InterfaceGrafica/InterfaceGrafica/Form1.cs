using System;
using System.IO.Ports;
using System.Windows.Forms;

namespace InterfaceGrafica
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            // Configurações da porta serial
            serialPort1.BaudRate = 9600;
            serialPort1.PortName = "COM9"; // mudar para a COM onde o arduino esta conectado
            serialPort1.DataReceived += SerialPort1_DataReceived;

            try
            {
                serialPort1.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao abrir porta serial: " + ex.Message);
            }
        }

        private void SerialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            try
            {
                string dados = serialPort1.ReadLine();

                this.Invoke(new MethodInvoker(() =>
                {
                    if (dados.Contains("Temperatura Atual"))
                    {
                        // Extrai apenas o valor numérico da temperatura
                        string[] partes = dados.Split(':');
                        if (partes.Length > 1)
                        {
                            string temperaturaStr = partes[1].Replace("C", "").Trim();
                            lblTemperatura.Text = $"{temperaturaStr} ºC";
                        }
                    }
                    else if (dados.Contains("Novo setpoint"))
                    {
                        MessageBox.Show(dados, "Confirmação do Arduino", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }));
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao ler da serial: " + ex.Message);
            }
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            if (serialPort1.IsOpen)
            {
                string valor = txtSetpoint.Text.Trim();

                if (float.TryParse(valor, out float temp))
                {
                    serialPort1.WriteLine(valor);
                }
                else
                {
                    MessageBox.Show("Digite um valor numérico válido para o setpoint.", "Erro de entrada", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("Porta serial não está aberta!");
            }
        }

        private void txt_TextChanged(object sender, EventArgs e) { }

        private void txtSetpoint_TextChanged(object sender, EventArgs e) { }
    }
}