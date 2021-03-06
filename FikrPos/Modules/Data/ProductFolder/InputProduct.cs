﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace FikrPos.Forms.Data.ProductFolder
{
    public partial class InputProduct : Form
    {
        
        public Product product;
        private FormModeEnum _formMode;
        private string oldKey;
        public InputProduct()
        {
            InitializeComponent();
        }

        private void InputUser_Load(object sender, EventArgs e)
        {

        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            FikrPosDataContext db = Program.getDb();
            if (FormMode == FormModeEnum.Insert)
            {   
                product = new Product();
                product.Code = txtCode.Text;
                product.Name = txtName.Text;
                product.Price = Convert.ToDouble(txtPrice.Text);
                product.Unit = cboUnit.Text;
                product.Discount = Convert.ToDouble(txtDiscount.Text);
                product.Tax = Convert.ToDouble(txtTax.Text);
                int Stock = 0;
                int Minimum_Stock = 0;
                db.InsertProduct(product.Code, product.Name, product.Price, product.Unit, product.Discount, product.Tax, Stock, Minimum_Stock);
                db.SubmitChanges();
            }
            else if (FormMode == FormModeEnum.Update)
            {
                var product = (from p in db.Products
                               where p.Code.Equals(oldKey)
                               select p).SingleOrDefault();
                product.Code = txtCode.Text;
                product.Name = txtName.Text;
                product.Price = Convert.ToDouble(txtPrice.Text);
                product.Unit = cboUnit.Text;
                product.Discount = Convert.ToDouble(txtDiscount.Text);
                product.Tax = Convert.ToDouble(txtTax.Text);
                db.SubmitChanges();
            }
        }

        internal void prepareForm(string key)
        {
            oldKey = key;
            FikrPosDataContext db = Program.getDb();
            var product = (from p in db.Products
                           where p.Code.Equals(oldKey)
                           select p).SingleOrDefault();
            if (product != null)
            {
                txtCode.Text = product.Code;
                txtName.Text = product.Name;
                txtPrice.Text = product.Price.ToString();
                cboUnit.Text = product.Unit;
                txtDiscount.Text = product.Discount.ToString();
                txtTax.Text = product.Tax.ToString();                
            }
        }

        public void initFields()
        {
            txtDiscount.Text = "0";
            txtTax.Text = "0";
        }

        public FormModeEnum FormMode
        {
            get 
            {
                return _formMode;
            }
            set
            {
                if (value == FormModeEnum.Insert)
                {
                    initFields();                 
                }
                _formMode = value;
            }
        }
    }
}
