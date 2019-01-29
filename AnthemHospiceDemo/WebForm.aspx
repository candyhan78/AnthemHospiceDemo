<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="AnthemHospiceDemo.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="/CSS/StyleSheet1.css" type="text/css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $(function() {
        $("#<%= SOCDate.ClientID %>").datepicker();
        });
    $(function() {
        $("#<%= BenefitPeriodFrom.ClientID %>").datepicker();
        });
    $(function() {
        $("#<%= BenefitPeriodTo.ClientID %>").datepicker();
    });
</script>
    <title>Anthem Demo</title>
</head>

<body>
    <form runat="server">
  
    <div class="divcontent">
        <h2>Patient Name:</h2>
   
        <ul class="ul1">
        <li>
            <b>First Name :</b> <br/>
            <asp:TextBox ID="TextFName" Width="65%" runat="server"></asp:TextBox>
        </li>
        <li>
            <b>Middle Name :</b> <br/>
            <asp:TextBox ID="TextMName" Width="65%" runat="server"></asp:TextBox>
        </li>
        <li>
            <b>Last Name :</b> <br/>
            <asp:TextBox ID="TextLName" Width="65%" runat="server"></asp:TextBox>
        </li>
        <li>
            <b>Suffix:</b> <br />
            <asp:TextBox ID="TextSuffix" Width="65%" runat="server"></asp:TextBox>
        </li>
        <li>
            <b>MR#: </b><br />
            <asp:TextBox ID="TextMR" Width="65%" runat="server"></asp:TextBox>
        </li>
        </ul>
        <ul>
        <li>
            <b>SOC Date :</b> <br/>
            <asp:TextBox ID="SOCDate" Width="65%" runat="server" />
        </li>
        <li>
            <b>Benefit Period :</b> <br/>
            <asp:TextBox ID="BenefitPeriod" Width="65%" runat="server"></asp:TextBox>
        </li>
        <li>
            <b>From :</b> <br/>
            <asp:TextBox ID="BenefitPeriodFrom" Width="65%" runat="server"></asp:TextBox>
        </li>
        <li>
            <b>To:</b> <br />
            <asp:TextBox ID="BenefitPeriodTo" Width="65%" runat="server"></asp:TextBox>
        </li>
      
        </ul>
   </div>

   <div class="divcontent">
       <div class="pformat2">A. Admit to Anthem Hospice</div> 
   </div>

   <div class="divcontent">
       <div class="pformat2">B. Principal Terminal Admitting Disease:</div> 
       <asp:TextBox ID="TextB1" Width="30%" runat="server"></asp:TextBox>
       <div class="pformat2">Co-morbidities:
           <ul>
               <li><b>A</b>
                   <asp:TextBox ID="TextBoxA" runat="server"></asp:TextBox>
               </li>
               <li><b>B</b>
                   <asp:TextBox ID="TextBoxB" runat="server"></asp:TextBox>
               </li>
           </ul>
           <ul>
               <li><b>C</b>
                   <asp:TextBox ID="TextBoxC" runat="server"></asp:TextBox>
               </li>
               <li><b>D</b>
                   <asp:TextBox ID="TextBoxD" runat="server"></asp:TextBox>
               </li>
           </ul>
           
       </div>
    </div>
    <div class="divcontent">
        <div class="pformat">C. </div><div class="pformat2">Code Status: </div> 
        <span class="divcontent2"> DNR
            <asp:CheckBox ID="DNR" runat="server"/> &nbsp&nbsp Full Code
            <asp:CheckBox ID="FullCode" runat="server"/><br />
        </span>
    </div>

    
    <div class="divcontent">
        <span class="pformat">D. </span><span class="pformat2">Medication Allergy: </span>
        <span class="divcontent2"> 
            <asp:CheckBox ID="MedAllergyNone" runat="server"/> None &nbsp&nbsp
            <asp:CheckBox ID="MedAllergicTo" runat="server"/> Allergic to&nbsp&nbsp
            <asp:TextBox ID="MedsAllergry" runat="server" />
        </span>
    </div>
    <div class="divcontent">
        <span class="pformat2" id="spacing">Food Allergy: </span>
        <span class="divcontent2"> 
            <asp:CheckBox ID="FoodAllergyNone" runat="server"/> None &nbsp&nbsp 
            <asp:CheckBox ID="FoodAllergicTo" runat="server"/> Allergic to &nbsp&nbsp
            <asp:TextBox ID="FoodAllergy" runat="server" />
        </span>
    </div>

    <div class="divcontent">
        <span class="pformat">E. </span><span class="pformat2">Location of care: </span>
        <div class="divcontent2"> 
            <asp:CheckBox ID="Pvthome" runat="server"/> Pvt home &nbsp&nbsp 
            <asp:CheckBox ID="ALFBrdCare" runat="server"/> ALF/Brd & Care &nbsp&nbsp  
            <asp:CheckBox ID="NH" runat="server"/> NH <br />
            <div id="divspacing">
            <asp:CheckBox ID="LocationCareOthers" runat="server"/> Others
            <asp:TextBox ID="Others" width="30%" runat="server" /> 
            </div>
        </div>
    </div>

    <div class="divcontent">
        <span class="pformat">F. </span><span class="pformat2">Level of Care: </span> &nbsp&nbsp
        <span class="divcontent2"> 
            <asp:CheckBox ID="Routine" runat="server"/> Routine &nbsp&nbsp 
            <asp:CheckBox ID="RespiteInpatient" runat="server"/> Respite In-Patient &nbsp&nbsp
            <asp:CheckBox ID="Continuous" runat="server"/> Continous &nbsp&nbsp 
            <asp:CheckBox ID="GeneralInpatient" runat="server"/> General In-patient
        </span>
    </div>

    <div class="divcontent">
        <span class="pformat">G. </span><span class="pformat2">Activity: </span> &nbsp&nbsp
        <span class="divcontent2"> 
            <asp:CheckBox ID="Bedrest" runat="server"/> Bed rest &nbsp&nbsp 
            <asp:CheckBox ID="Bedtochair" runat="server"/> Bed to chair &nbsp&nbsp
            <asp:CheckBox ID="Upastolerated" runat="server"/> Up as tolerated
        </span>
    </div>

    <div class="divcontent">
        <span class="pformat">H. </span><span class="pformat2">Diet: </span> &nbsp&nbsp
        <span class="divcontent2"> 
            <asp:CheckBox ID="DietRegular" runat="server"/> Regular &nbsp&nbsp 
            <asp:CheckBox ID="DietAsTolerated" runat="server"/> As tolaerated &nbsp&nbsp
            <asp:CheckBox ID="DietMechanicalSoft" runat="server"/> Mechanical Soft/Pureed &nbsp&nbsp
            <asp:CheckBox ID="DietDiabetic" runat="server"/> Diabetic &nbsp&nbsp
            <asp:CheckBox ID="DietNoAddedSalt" runat="server"/> No added salt <br />
        </span>
        <div class="divcontent3">
            <asp:CheckBox ID="Fluids" runat="server"/> Thickened fluids to <asp:TextBox ID="FluidsThickhenedTo" width="30%" runat="server" /> consistency <br />
        </div>
        <div class="divcontent3">
            <asp:CheckBox ID="FluidOtherRestrit" runat="server"/>Other restrictions<asp:TextBox ID="FluidOtherRestrictions" width="30%" runat="server" /> <br />
        </div>
    </div>

    <div class="divcontent">
        <span class="pformat">I. </span><span class="pformat2">Oxygen supplement: </span> &nbsp&nbsp
        <span class="divcontent2"> 
            <asp:CheckBox ID="O2SuppNone" runat="server"/> None &nbsp&nbsp 
            <asp:CheckBox ID="O2SuppLPM" runat="server"/> 
            <asp:TextBox ID="O2SuppLPMNasal" runat="server"/> &nbsp LPM via nasal cannula &nbsp&nbsp
            <asp:RadioButton ID="ContinousR" Text="Continous" GroupName="OxygenSupplement" runat="server"/> 
            <asp:RadioButton ID="PRNSoB" Text="PRN for shortness of breath" GroupName="OxygenSupplement" runat="server"/> <br />
        </span>
    </div>
    <div class="divcontent">
        <span class="pformat">J. </span><span class="pformat2bold">Medications:</span> <span class="pformat2">Please see Medication Sheet</span> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <span class="divcontent2">FSBS:<asp:CheckBox ID="FSBSCB" runat="server"/>
        <asp:TextBox ID="FSBS" width="20%" runat="server" /></span>
    </div>

    <div class="divcontent">
        <span class="pformat">K. </span><span class="pformat2bold">Interdisciplinary frequency of visits:</span><br />
    </div>

    <table class="table1">
        <tr>
            <td class="tdtext">Skilled nursing</td>
            <td><asp:TextBox class="tdbox" ID="freqSN" runat="server"/></td>
            <td><asp:CheckBox ID="DeclineSN" runat="server"/> Declined &nbsp&nbsp </td>
        </tr>
        <tr>
            <td class="tdtext">CHHA</td>
            <td><asp:TextBox class="tdbox" ID="freqCHHA" runat="server"/></td>
            <td><asp:CheckBox ID="DeclineCHHA" runat="server"/> Declined &nbsp&nbsp </td>
        </tr>
        <tr>
            <td class="tdtext">Bereavement</td>
            <td><asp:TextBox class="tdbox" ID="freqBereav" runat="server"/></td>
            <td><asp:CheckBox ID="DeclineBereavement" runat="server"/> Declined &nbsp&nbsp </td>
        </tr>
        <tr>
            <td class="tdtext">Psychosocial Svc</td>
            <td><asp:TextBox class="tdbox" ID="freqPsycho" runat="server"/></td>
            <td><asp:CheckBox ID="DeclinePsychosocial" runat="server"/> Declined &nbsp&nbsp </td>
        </tr>
        <tr>
            <td class="tdtext">Volunteer</td>
            <td><asp:TextBox class="tdbox" ID="freqVolunteer" runat="server"/></td>
            <td><asp:CheckBox ID="DeclineVolunteer" runat="server"/> Declined &nbsp&nbsp </td>
        </tr>
    </table>
    <table class="table2">
        <tr><td><asp:CheckBox ID="WoundCareRefer" runat="server"/> Refer to wound care specialist</td></tr>
        <tr><td><asp:TextBox  ID="WoundCareOrder" runat="server"/></td></tr>   
    </table>
        
    <div class="divcontent clear" >
       <br />
       <span class="pformat">L. </span>
       <span class="pformat2"> DME </span>
    </div>
    <table class="table2">
        <tr>
            <th>Device</th><th>N/A</th><th>Needs</th><th>Has</th><th>Ordered</th><th>Refused</th>
        </tr>
        <tr>
            <td class="td3">Hospital Bed 1/2 Rails</td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL1" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL2" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL3" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL4" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL5" runat="server"/></td>
        </tr>
        <tr>
            <td class="td3">Hospital Bed Full Rails</td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL6" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL7" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL8" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL9" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL10" runat="server"/></td>
        </tr>
        <tr>
            <td class="td3">APP mattress</td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL11" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL12" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL13" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL14" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL15" runat="server"/></td>
        </tr>
        <tr>
            <td class="td3">Commode/urinal</td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL16" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL17" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL18" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL19" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL20" runat="server"/></td>
        </tr>
        <tr>
            <td class="td3">Over-bed table</td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL21" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL22" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL23" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL24" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL25" runat="server"/></td>
        </tr>
        <tr>
            <td class="td3">Wheelchair</td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL26" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL27" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL28" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL29" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBoxL30" runat="server"/></td>
        </tr>
    </table>

    <div class="divcontent clear" >
       <br />
       <span class="pformat">M. </span>
       <span class="pformat2"> Supplies </span>
    </div>  

    <table class="table2">
        <tr>
            <th></th><th>Needs</th><th>N/A</th><th></th><th>Needs</th><th>N/A</th>
        </tr>
        <tr>
            <td class="td3">Incontinent Supplies</td>
            <td class="td1"><asp:CheckBox ID="CheckBox7" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox8" runat="server"/></td>
            <td class="td3">Ostomy care supplies</td>
            <td class="td1"><asp:CheckBox ID="CheckBox9" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox10" runat="server"/></td>   
        </tr>
        <tr>
            <td class="td3">4 x 4 Gauze</td>
            <td class="td1"><asp:CheckBox ID="CheckBox11" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox12" runat="server"/></td>
            <td class="td3">Calmoseptine</td>
            <td class="td1"><asp:CheckBox ID="CheckBox13" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox14" runat="server"/></td>   
        </tr>
        <tr>
            <td class="td3">Foley catheter</td>
            <td class="td1"><asp:CheckBox ID="CheckBox15" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox16" runat="server"/></td>
            <td class="td3">Oral hygiene supplies</td>
            <td class="td1"><asp:CheckBox ID="CheckBox17" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox18" runat="server"/></td>   
        </tr>
        <tr>
            <td class="td3">Sharps container</td>
            <td class="td1"><asp:CheckBox ID="CheckBox19" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox20" runat="server"/></td>
            <td class="td3">Wound care supplies</td>
            <td class="td1"><asp:CheckBox ID="CheckBox21" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox22" runat="server"/></td>   
        </tr>
        <tr>
            <td class="td3">GT supplies</td>
            <td class="td1"><asp:CheckBox ID="CheckBox23" runat="server"/></td>
            <td class="td1"><asp:CheckBox ID="CheckBox24" runat="server"/></td>
            <td class="td1"><asp:TextBox ID="TextBoxM1" runat="server"/></td>
            <td class="td1"><asp:TextBox ID="TextBoxM2" runat="server"/></td>
            <td class="td1"><asp:TextBox ID="TextBoxM3" runat="server"/></td>
        </tr>
        <tr>
            <td class="td3">Others</td>
            <td class="td1" colspan="5"><asp:TextBox ID="TextBoxM4" height="30px" width="500px" runat="server"/></td>
        </tr>
    </table>

    
       
    <div class="divcontent clear">
        <div class="boxing">
        <div class="pformat2">
            Name: <br />
            <span><asp:TextBox ID="RNSignedBy" Width="200px" Height="30px" runat="server"/></span> <span class="span1">,RN</span>
        </div>
        <div class="pformat2">
            Name: <br />
            <span><asp:TextBox ID="MDSignedBy" Width="200px" Height="30px" runat="server"/></span> <span class="span1">,MD</span>
        </div>
        </div>

        <div class="boxing">
        <div class="pformat2">
            Signature: <br />
            <span><asp:TextBox ID="TextBox6" Width="200px" Height="50px" runat="server"/></span>
        </div>
        <div class="pformat2">
            Signature: <br />
            <span><asp:TextBox ID="TextBox7" Width="200px" Height="50px" runat="server"/></span>
        </div>
        </div>
    </div>
    <br />



    <p class="clear">
        <asp:Button ID="btnGeneratePDF" runat="server" Text="Generate PDF" 
            onclick="BtnGeneratePDF_Click" />
    </p>










    </form>
</body>
</html>

