<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     
        <a href="Home.aspx"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp; Update Information<</span>
        
   </div>  
    <div class="services">
   	  <div class="col-sm-6 login_left" style="left: 0px; top: 0px; width: 1296px">
	   
  	    <div class="form-item form-type-textfield form-item-name" style="text-align: left; margin-left: 40px;">
                   
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                    <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn_1 submit" OnClick="Button1_Click" />

                        <br />
                    <br />
                    &nbsp;Name (In Full)&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="554px" CssClass="form-text required" style="z-index: 1; width: 580px; height: 26px; position: relative; top: -25px; left: 149px"></asp:TextBox>
                        &nbsp; Gender &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cmbboxgender" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="cmbboxage" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br /> &nbsp; Religion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:DropDownList 
                        ID="cmbboxreligion" runat="server" Width="136px">
                        <asp:ListItem Value="Does Not Matter">Does Not Matter</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Muslim</asp:ListItem>
                        <asp:ListItem>Christian</asp:ListItem>
                        <asp:ListItem>Sikh</asp:ListItem>
                        <asp:ListItem>Parsi</asp:ListItem>
                        <asp:ListItem>Jain</asp:ListItem>
                        <asp:ListItem>Jewish</asp:ListItem>
                        <asp:ListItem>Buddhist</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mother Tongue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; <asp:DropDownList ID="cmbboxmothertongue" runat="server" 
                        Width="136px">
                        <asp:ListItem Value="Does Not Matter">Does Not Matter</asp:ListItem>
                        <asp:ListItem>Aasamese</asp:ListItem>
                        <asp:ListItem>Bengali</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Kannada</asp:ListItem>
                        <asp:ListItem>Konkani</asp:ListItem>
                        <asp:ListItem>Malyalam</asp:ListItem>
                        <asp:ListItem>Marathi</asp:ListItem>
                        <asp:ListItem>Marwari</asp:ListItem>
                        <asp:ListItem>Oriya</asp:ListItem>
                        <asp:ListItem>Sindhi</asp:ListItem>
                        <asp:ListItem>Punjabi</asp:ListItem>
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>Telegu</asp:ListItem>
                        <asp:ListItem>Urdu</asp:ListItem>
                        <asp:ListItem>Bhojpuri</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                        &nbsp; Weight (Kgs.)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:DropDownList ID="cmbboxweight" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>51</asp:ListItem>
                        <asp:ListItem>52</asp:ListItem>
                        <asp:ListItem>53</asp:ListItem>
                        <asp:ListItem>54</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                        <asp:ListItem>59</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                        <asp:ListItem>61</asp:ListItem>
                        <asp:ListItem>62</asp:ListItem>
                        <asp:ListItem>63</asp:ListItem>
                        <asp:ListItem>64</asp:ListItem>
                        <asp:ListItem>65</asp:ListItem>
                        <asp:ListItem>66</asp:ListItem>
                        <asp:ListItem>67</asp:ListItem>
                        <asp:ListItem>68</asp:ListItem>
                        <asp:ListItem>69</asp:ListItem>
                        <asp:ListItem>70</asp:ListItem>
                        <asp:ListItem>71</asp:ListItem>
                        <asp:ListItem>72</asp:ListItem>
                        <asp:ListItem>73</asp:ListItem>
                        <asp:ListItem>74</asp:ListItem>
                        <asp:ListItem>75</asp:ListItem>
                        <asp:ListItem>76</asp:ListItem>
                        <asp:ListItem>77</asp:ListItem>
                        <asp:ListItem>78</asp:ListItem>
                        <asp:ListItem>79</asp:ListItem>
                        <asp:ListItem>80</asp:ListItem>
                        <asp:ListItem>81</asp:ListItem>
                        <asp:ListItem>82</asp:ListItem>
                        <asp:ListItem>83</asp:ListItem>
                        <asp:ListItem>84</asp:ListItem>
                        <asp:ListItem>85</asp:ListItem>
                        <asp:ListItem>86</asp:ListItem>
                        <asp:ListItem>87</asp:ListItem>
                        <asp:ListItem>88</asp:ListItem>
                        <asp:ListItem>89</asp:ListItem>
                        <asp:ListItem>90</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="cmbboxstatus" runat="server" 
                        Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Separated</asp:ListItem>
                         <asp:ListItem>Divorced</asp:ListItem>
                        <asp:ListItem>Widowed</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp; Located In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="cmbboxlocated" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Navi Mumbai</asp:ListItem>
                        <asp:ListItem>Thane</asp:ListItem>
                        <asp:ListItem>pune</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Interested In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="cmbboxinterested" runat="server" 
                        Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Sports &amp; Adventure </asp:ListItem>
                        <asp:ListItem>Movies &amp; Entertainment</asp:ListItem>
                        <asp:ListItem>Arts &amp; Science</asp:ListItem>
                        <asp:ListItem>Technology</asp:ListItem>
                         <asp:ListItem>Fashion</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <br />
                    &nbsp; Blood Group&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cmbboxbloodgrp" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>A Positive</asp:ListItem>
                        <asp:ListItem>A Negative</asp:ListItem>
                        <asp:ListItem>B Positive</asp:ListItem>
                        <asp:ListItem>B Negative</asp:ListItem>
                        <asp:ListItem>AB Positive</asp:ListItem>
                        <asp:ListItem>AB Negative</asp:ListItem>
                        <asp:ListItem>O Positive</asp:ListItem>
                        <asp:ListItem>O Negative</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Complexion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="cmbboxcomplexion" runat="server" 
                        Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Very Fair</asp:ListItem>
                        <asp:ListItem>Fair</asp:ListItem>
                        <asp:ListItem>Wheatish</asp:ListItem>
                        <asp:ListItem>Dark</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;Education Field&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cmbboxedufield" runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Advertising</asp:ListItem>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Administrative Services</asp:ListItem>
                        <asp:ListItem>Architecture</asp:ListItem>
                        <asp:ListItem>Computers/IT</asp:ListItem>
                        <asp:ListItem>Engineering/Technology</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                        <asp:ListItem>Law</asp:ListItem>
                        <asp:ListItem>Fashion</asp:ListItem>
                        <asp:ListItem>Fine Arts</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Medicine</asp:ListItem>
                        <asp:ListItem>Shipping</asp:ListItem>
                        <asp:ListItem>Travel/Tourism</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Annual Income(INR)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="cmbboxannualincome" 
                        runat="server" Width="136px">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Less Than 50,000</asp:ListItem>
                        <asp:ListItem>50,000 - 1Lakh</asp:ListItem>
                        <asp:ListItem>1Lakh - 2Lakh</asp:ListItem>
                        <asp:ListItem>2Lakh - 3Lakh</asp:ListItem>
                        <asp:ListItem>3-Lakh-4Lakh</asp:ListItem>
                        <asp:ListItem>4Lakh - 5Lakh</asp:ListItem>
                        <asp:ListItem>5Lakh - 6Lakh</asp:ListItem>
                        <asp:ListItem>6Lakh - 7Lakh</asp:ListItem>
                        <asp:ListItem>7Lakh - 8Lakh</asp:ListItem>
                        <asp:ListItem>8Lakh - 9Lakh</asp:ListItem>
                        <asp:ListItem>9Lakh - 10Lakh</asp:ListItem>
                        <asp:ListItem>Greater Than 10Lakh</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;Mobile No&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="554" CssClass="form-text " MaxLength="10" style="z-index: 1; width: 580px; height: 25px; position: relative; top: -27px; left: 153px; right: -153px; margin-top:10px"></asp:TextBox>
             
                    Email - ID&nbsp;&nbsp;
              
              <asp:TextBox ID="TextBox3" runat="server" Width="554" CssClass="form-text required" style="z-index: 1; width: 580px; height: 27px; position: relative; top: -28px; left: 154px"></asp:TextBox>
                        Password
              <asp:TextBox ID="TextBox4" TextMode="Password" runat="server" Width="554" CssClass="form-text required" style="z-index: 1; width: 580px; height: 27px; position: relative; top: -27px; left: 153px"></asp:TextBox>
                   
                    Confirm&nbsp;&nbsp;&nbsp; &nbsp;
              <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" CssClass="form-text required" style="position: relative; left: 152px; top: -28px; height: 25px; width: 581px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" CssClass="btn_1 submit" Text="Update profile" style="right: -343px; height: 41px;" UseSubmitBehavior="False" CausesValidation="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
           </div></div>
             </div>

</div>
</asp:Content>

