using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace login
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        string admin_id, admin_psw,user;
        private void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (textBox1.Text == "")
                {
                    MessageBox.Show("帐号不能为空");
                }
                else
                {
                    if (textBox2.Text == "")
                    {
                        MessageBox.Show("密码不能为空!");
                    }
                    else
                    {
                        admin_id = textBox1.Text;//获取账号
                        string admin_psw = textBox2.Text;//获取密码
                        string conn = "";

                        conn = "server = 127.0.0.1; user = root; database = users; port = 3306; password = sas124578; ";//连接字符串，需要改成你自己的

                        MySqlConnection connection = new MySqlConnection(conn);//创建连接
                        connection.Open();//打开连接                       
                        string sql = string.Format("select count(*) from loging_message where user_name='{0}' and user_password='{1}'", admin_id, admin_psw);//查询是否有该条记录，根据账户密码
                        MySqlCommand command = new MySqlCommand(sql, connection);//sqlcommand表示要向向数据库执行sql语句或存储过程
                        int i = Convert.ToInt32(command.ExecuteScalar());//执行后返回记录行数

                        if (i > 0)//如果大于1，说明记录存在，登录成功
                        {
                            command = new MySqlCommand("select * from login where user_name='" + admin_id + "'", connection);
                            MySqlDataReader sdr = command.ExecuteReader();
                            sdr.Read();
                            user = sdr["nick_name"].ToString().Trim();

                            Form main = new MainPage();
                            this.Hide();
                            main.Show();
                        }
                        else
                        {
                            MessageBox.Show("用户名或者密码错误！");
                        }
                        connection.Close();
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("异常错误" + ex);
            }
        }
    }

    internal class MainPage : Form
    {
    }
}
