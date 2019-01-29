using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace AnthemHospiceDemo
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGeneratePDF_Click(object sender, EventArgs e)
        {
            var pdfPath = Path.Combine(Server.MapPath("~/PDF/Initial Interdisciplinary  Comprehensive Plan of Care 20190109.pdf"));

            // Get the form fields for this PDF and fill them in!
            var formFieldMap = PDFHelper.GetFormFieldNames(pdfPath);
            formFieldMap["PtFirstName"] = TextFName.Text;
            formFieldMap["PtMiddleName"] = TextMName.Text;
            formFieldMap["PtLastName"] = TextLName.Text;


            //B
            formFieldMap["PtSuffix"] = TextSuffix.Text;
            formFieldMap["MRNo"] = TextMR.Text;
            formFieldMap["SOCDate"] = SOCDate.Text;
            formFieldMap["BenefitPeriod"] = BenefitPeriod.Text;
            formFieldMap["BenefitPeriodFrom"] = BenefitPeriodFrom.Text;
            formFieldMap["BenefitPeriodTo"] = BenefitPeriodTo.Text;

            //B
            formFieldMap["A Principal Terminal Admitting Diagnosis"] = TextB1.Text;
            formFieldMap["Comorbidities  A"] = TextBoxA.Text;
            formFieldMap["Comorbidities  B"] = TextBoxB.Text;
            formFieldMap["Comorbidities  C"] = TextBoxC.Text;
            formFieldMap["Comorbidities  D"] = TextBoxD.Text;

            //C
            if (DNR.Checked)
                formFieldMap["DNR"] = "On";
            if (FullCode.Checked)
                formFieldMap["Full code"] = "On";

            //D
            if (MedAllergyNone.Checked)
                formFieldMap["MedAllergyNone"] = "On";
            if (MedAllergicTo.Checked)
                formFieldMap["MedAllergicTo"] = "On";
            formFieldMap["MedsAllergry"] = MedsAllergry.Text;
            if (FoodAllergyNone.Checked)
                formFieldMap["FoodAllergyNone"] = "On";
            if (FoodAllergicTo.Checked)
                formFieldMap["FoodAllergicTo"] = "On";
            formFieldMap["FoodAllergy"] = FoodAllergy.Text;

            //E

            if (Pvthome.Checked)
                formFieldMap["Pvt home"] = "On";
            if (ALFBrdCare.Checked)
                formFieldMap["ALFBrdCare"] = "On";
            if (NH.Checked)
                formFieldMap["NH"] = "On";
            if (LocationCareOthers.Checked)
                formFieldMap["LocationCareOthers"] = "On";
            formFieldMap["Others"] = Others.Text;

            //F
            if (Routine.Checked)
                formFieldMap["Routine"] = "On";
            if (RespiteInpatient.Checked)
                formFieldMap["Respite Inpatient"] = "On";
            if (Continuous.Checked)
                formFieldMap["Continuous"] = "On";
            if (GeneralInpatient.Checked)
                formFieldMap["General Inpatient"] = "On";

            //G
            if (Bedrest.Checked)
                formFieldMap["Bed rest"] = "On";
            if (Bedtochair.Checked)
                formFieldMap["Bed to chair"] = "On";
            if (Upastolerated.Checked)
                formFieldMap["Up as tolerated"] = "On";

            //H
            if (DietRegular.Checked)
                formFieldMap["DietRegular"] = "On";
            if (DietAsTolerated.Checked)
                formFieldMap["DietAsTolerated"] = "On";
            if (DietMechanicalSoft.Checked)
                formFieldMap["DietMechanicalSoft"] = "On";
            if (DietDiabetic.Checked)
                formFieldMap["DietDiabetic"] = "On";
            if (DietNoAddedSalt.Checked)
                formFieldMap["DietNoAddedSalt"] = "On";
            if (Fluids.Checked)
                formFieldMap["Fluids"] = "On";
            formFieldMap["FluidsThickenedTo"] = FluidsThickhenedTo.Text;
            if (Bedrest.Checked)
                formFieldMap["FluidOtherRestrit"] = "On";
            formFieldMap["FluidOtherRestrictions"] = FluidOtherRestrictions.Text;


            //I
            if (O2SuppNone.Checked)
                formFieldMap["O2SuppNone"] = "On";
            if (O2SuppLPM.Checked)
                formFieldMap["O2SuppLPM"] = "On";
            formFieldMap["O2SuppLPMNasal"] = O2SuppLPMNasal.Text;
            if (ContinousR.Checked)
                formFieldMap["ContinousR"] = "Yes";
            if (PRNSoB.Checked)
                formFieldMap["PRNSoB"] = "Yes";

            //J
            if (FSBSCB.Checked)
                formFieldMap["fsbscb"] = "Yes";
            formFieldMap["FSBS"] = FSBS.Text;

            //K

            formFieldMap["freqSN"] = freqSN.Text;
            formFieldMap["freqCHHA"] = freqCHHA.Text;
            formFieldMap["freqBereav"] = freqBereav.Text;
            formFieldMap["freqPsycho"] = freqPsycho.Text;
            formFieldMap["freqVolunteer"] = freqVolunteer.Text;
            formFieldMap["WoundCareRefer"] = freqVolunteer.Text;
            formFieldMap["Text2"] = WoundCareOrder.Text;

            //L
            formFieldMap["RNSignedBy"] = RNSignedBy.Text;
            formFieldMap["MDSignedBy"] = MDSignedBy.Text;






            var pdfContents = PDFHelper.GeneratePDF(pdfPath, formFieldMap);

            PDFHelper.ReturnPDF(pdfContents, "AnthemPDF.pdf");
        }
    }
}