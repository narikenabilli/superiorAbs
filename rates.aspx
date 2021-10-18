<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rates.aspx.cs" Inherits="rates" %>

<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">
  <div class="page clearfix">
	
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Texas Title Insurance Basic Premium Rates</h3>
				
				<p>
					<a href="InsuranceCalculatorNew.aspx">For policies over $100,000 use our calculator</a>  |  <a href="pdf/Premium-Rates.pdf">Download our printed premium rate card</a>
				</p>
				
				<p>
					<b>FOR POLICIES LESS THAN $100,000</b>
				</p>
				
			<!--	<ul class="tables">
					<li>
            <table class="tbl-calculator tbl-odd">
                <thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>10,000</td>
					    <td>238</td>
					    <td>12,500</td>
					    <td>255</td>
					    <td>15,000</td>
					    <td>272</td>
					    <td>17,500</td>
					    <td>292</td>
				    </tr>
				    <tr>
					    <td>10,500</td>
					    <td>242</td>
					    <td>13,000</td>
					    <td>260</td>
					    <td>15,500</td>
					    <td>276</td>
					    <td>18,000</td>
					    <td>296</td>
				    </tr>
				    <tr>
					    <td>11,000</td>
					    <td>244</td>
					    <td>13,500</td>
					    <td>264</td>
					    <td>16,000</td>
					    <td>280</td>
					    <td>18,500</td>
					    <td>298</td>
				    </tr>
				    <tr>
					    <td>11,500</td>
					    <td>248</td>
					    <td>14,000</td>
					    <td>267</td>
					    <td>16,500</td>
					    <td>284</td>
					    <td>19,000</td>
					    <td>301</td>
				    </tr>
				    <tr>
					    <td>12,000</td>
					    <td>252</td>
					    <td>14,500</td>
					    <td>270</td>
					    <td>17,000</td>
					    <td>288</td>
					    <td>19,500</td>
					    <td>304</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-even">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>20,000</td>
					    <td>309</td>
					    <td>22,500</td>
					    <td>327</td>
					    <td>25,000</td>
					    <td>345</td>
					    <td>27,500</td>
					    <td>361</td>
				    </tr>
				    <tr>
					    <td>20,500</td>
					    <td>312</td>
					    <td>23,000</td>
					    <td>330</td>
					    <td>25,500</td>
					    <td>348</td>
					    <td>28,000</td>
					    <td>365</td>
				    </tr>
				    <tr>
					    <td>21,000</td>
					    <td>317</td>
					    <td>23,500</td>
					    <td>333</td>
					    <td>26,000</td>
					    <td>352</td>
					    <td>28,500</td>
					    <td>368</td>
				    </tr>
				    <tr>
					    <td>21,500</td>
					    <td>320</td>
					    <td>24,000</td>
					    <td>337</td>
					    <td>26,500</td>
					    <td>355</td>
					    <td>29,000</td>
					    <td>373</td>
				    </tr>
				    <tr>
					    <td>22,000</td>
					    <td>324</td>
					    <td>24,500</td>
					    <td>340</td>
					    <td>27,000</td>
					    <td>358</td>
					    <td>29,500</td>
					    <td>376</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-odd">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>30,000</td>
					    <td>380</td>
					    <td>32,500</td>
					    <td>398</td>
					    <td>35,000</td>
					    <td>415</td>
					    <td>37,500</td>
					    <td>433</td>
				    </tr>
				    <tr>
					    <td>30,500</td>
					    <td>383</td>
					    <td>33,000</td>
					    <td>401</td>
					    <td>35,500</td>
					    <td>419</td>
					    <td>38,000</td>
					    <td>437</td>
				    </tr>
				    <tr>
					    <td>31,000</td>
					    <td>387</td>
					    <td>33,500</td>
					    <td>405</td>
					    <td>36,000</td>
					    <td>422</td>
					    <td>38,500</td>
					    <td>441</td>
				    </tr>
				    <tr>
					    <td>31,500</td>
					    <td>390</td>
					    <td>34,000</td>
					    <td>408</td>
					    <td>36,500</td>
					    <td>426</td>
					    <td>39,000</td>
					    <td>443</td>
				    </tr>
				    <tr>
					    <td>32,000</td>
					    <td>393</td>
					    <td>34,500</td>
					    <td>412</td>
					    <td>37,000</td>
					    <td>429</td>
					    <td>39,500</td>
					    <td>447</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-even">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>40,000</td>
					    <td>450</td>
					    <td>42,500</td>
					    <td>469</td>
					    <td>45,000</td>
					    <td>487</td>
					    <td>47,500</td>
					    <td>503</td>
				    </tr>
				    <tr>
					    <td>40,500</td>
					    <td>455</td>
					    <td>43,000</td>
					    <td>471</td>
					    <td>45,500</td>
					    <td>490</td>
					    <td>48,000</td>
					    <td>508</td>
				    </tr>
				    <tr>
					    <td>41,000</td>
					    <td>457</td>
					    <td>43,500</td>
					    <td>475</td>
					    <td>46,000</td>
					    <td>493</td>
					    <td>48,500</td>
					    <td>512</td>
				    </tr>
				    <tr>
					    <td>41,500</td>
					    <td>462</td>
					    <td>44,000</td>
					    <td>479</td>
					    <td>46,500</td>
					    <td>497</td>
					    <td>49,000</td>
					    <td>515</td>
				    </tr>
				    <tr>
					    <td>42,000</td>
					    <td>465</td>
					    <td>44,500</td>
					    <td>483</td>
					    <td>47,000</td>
					    <td>499</td>
					    <td>49,500</td>
					    <td>518</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-odd">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>50,000</td>
					    <td>522</td>
					    <td>52,500</td>
					    <td>540</td>
					    <td>55,000</td>
					    <td>556</td>
					    <td>57,500</td>
					    <td>575</td>
				    </tr>
				    <tr>
					    <td>50,500</td>
					    <td>525</td>
					    <td>53,000</td>
					    <td>543</td>
					    <td>55,500</td>
					    <td>559</td>
					    <td>58,000</td>
					    <td>579</td>
					</tr>
				    <tr>
					    <td>51,000</td>
					    <td>527</td>
					    <td>53,500</td>
					    <td>547</td>
					    <td>56,000</td>
					    <td>565</td>
					    <td>58,500</td>
					    <td>581</td>
					    </tr>
				    <tr>
					    <td>51,500</td>
					    <td>531</td>
					    <td>54,000</td>
					    <td>550</td>
					    <td>56,500</td>
					    <td>568</td>
					    <td>59,000</td>
					    <td>585</td>
				    </tr>
				    <tr>
					    <td>52,000</td>
					    <td>536</td>
					    <td>54,500</td>
					    <td>553</td>
					    <td>57,000</td>
					    <td>571</td>
					    <td>59,500</td>
					    <td>589</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-even">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>60,000</td>
					    <td>593</td>
					    <td>62,500</td>
					    <td>611</td>
					    <td>65,000</td>
					    <td>628</td>
					    <td>67,500</td>
					    <td>645</td>
				    </tr>
				    <tr>
					    <td>60,500</td>
					    <td>597</td>
					    <td>63,000</td>
					    <td>613</td>
					    <td>65,500</td>
					    <td>631</td>
					    <td>68,000</td>
					    <td>649</td>
				    </tr>
				    <tr>
					    <td>61,000</td>
					    <td>600</td>
					    <td>63,500</td>
					    <td>617</td>
					    <td>66,000</td>
					    <td>635</td>
					    <td>68,500</td>
					    <td>653</td>
				    </tr>
				    <tr>
					    <td>61,500</td>
					    <td>603</td>
					    <td>64,000</td>
					    <td>621</td>
					    <td>66,500</td>
					    <td>640</td>
					    <td>69,000</td>
					    <td>656</td>
				    </tr>
				    <tr>
					    <td>62,000</td>
					    <td>607</td>
					    <td>64,500</td>
					    <td>625</td>
					    <td>67,000</td>
					    <td>644</td>
					    <td>69,500</td>
					    <td>659</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-odd">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>70,000</td>
					    <td>664</td>
					    <td>72,500</td>
					    <td>681</td>
					    <td>75,000</td>
					    <td>700</td>
					    <td>77,500</td>
					    <td>716</td>
				    </tr>
				    <tr>
					    <td>70,500</td>
					    <td>668</td>
					    <td>73,000</td>
					    <td>685</td>
					    <td>75,500</td>
					    <td>702</td>
					    <td>78,000</td>
					    <td>720</td>
				    </tr>
				    <tr>
					    <td>71,000</td>
					    <td>672</td>
					    <td>73,500</td>
					    <td>688</td>
					    <td>76,000</td>
					    <td>706</td>
					    <td>78,500</td>
					    <td>725</td>
				    </tr>
				    <tr>
					    <td>71,500</td>
					    <td>674</td>
					    <td>74,000</td>
					    <td>692</td>
					    <td>76,500</td>
					    <td>709</td>
					    <td>79,000</td>
					    <td>729</td>
				    </tr>
				    <tr>
					    <td>72,000</td>
					    <td>677</td>
					    <td>74,500</td>
					    <td>696</td>
					    <td>77,000</td>
					    <td>713</td>
					    <td>79,500</td>
					    <td>730</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-even">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>80,000</td>
					    <td>734</td>
					    <td>82,500</td>
					    <td>753</td>
					    <td>85,000</td>
					    <td>770</td>
					    <td>87,500</td>
					    <td>788</td>
				    </tr>
				    <tr>
					    <td>80,500</td>
					    <td>738</td>
					    <td>83,000</td>
					    <td>757</td>
					    <td>85,500</td>
					    <td>773</td>
					    <td>88,000</td>
					    <td>791</td>
				    </tr>
				    <tr>
					    <td>81,000</td>
					    <td>742</td>
					    <td>83,500</td>
					    <td>759</td>
					    <td>86,000</td>
					    <td>776</td>
					    <td>88,500</td>
					    <td>795</td>
				    </tr>
				    <tr>
					    <td>81,500</td>
					    <td>744</td>
					    <td>84,000</td>
					    <td>762</td>
					    <td>86,500</td>
					    <td>781</td>
					    <td>89,000</td>
					    <td>799</td>
				    </tr>
				    <tr>
					    <td>82,000</td>
					    <td>748</td>
					    <td>84,500</td>
					    <td>767</td>
					    <td>87,000</td>
					    <td>785</td>
					    <td>89,500</td>
					    <td>801</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-odd">
			    <thead>
			        <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>90,000</td>
					    <td>804</td>
					    <td>92,500</td>
					    <td>823</td>
					    <td>95,000</td>
					    <td>842</td>
					    <td>97,500</td>
					    <td>859</td>
				    </tr>
				    <tr>
					    <td>90,500</td>
					    <td>809</td>
					    <td>93,000</td>
					    <td>827</td>
					    <td>95,500</td>
					    <td>845</td>
					    <td>98,000</td>
					    <td>862</td>
				    </tr>
				    <tr>
					    <td>91,000</td>
					    <td>813</td>
					    <td>93,500</td>
					    <td>831</td>
					    <td>96,000</td>
					    <td>847</td>
					    <td>98,500</td>
					    <td>866</td>
				    </tr>
				    <tr>
					    <td>91,500</td>
					    <td>817</td>
					    <td>94,000</td>
					    <td>832</td>
					    <td>96,500</td>
					    <td>851</td>
					    <td>99,000</td>
					    <td>870</td>
				    </tr>
				    <tr>
					    <td>92,000</td>
					    <td>819</td>
					    <td>94,500</td>
					    <td>837</td>
					    <td>97,000</td>
					    <td>855</td>
					    <td>99,500</td>
					    <td>873</td>
				    </tr>
				</tbody>
			</table>
			
			<table class="tbl-calculator tbl-even">
				<thead>
				    <tr>
					    <td>Policies up<br />to and including</td>
					    <td>Basic<br />Premium</td>
					    <td colspan="6">&nbsp;</td>
				    </tr>
				</thead>
				<tbody>
				    <tr>
					    <td>100,000</td>
					    <td>875</td>
					    <td colspan="6"><a href="#top">For policies over $100,000 use our calculator</a></td>
				    </tr>
				</tbody>
			</table>
				</li>
			</ul> -->
				        <ul class="tables">
            <li>
    <table class="tbl-calculator tbl-odd">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$25,000</td>
                <td>$328</td>
                <td>$44,000</td>
                <td>$456</td>
                <td>$63,000</td>
                <td>$583</td>
                <td>$82,000</td>
                <td>$711</td>
            </tr>
            <tr>
                <td>$25,500</td>
                <td>$331</td>
                <td>$44,500</td>
                <td>$459</td>
                <td>$63,500</td>
                <td>$587</td>
                <td>$82,500</td>
                <td>$716</td>
            </tr>
            <tr>
                <td>$26,000</td>
                <td>$335</td>
                <td>$45,000</td>
                <td>$463</td>
                <td>$64,000</td>
                <td>$591</td>
                <td>$83,000</td>
                <td>$720</td>
            </tr>
            <tr>
                <td>$26,500</td>
                <td>$338</td>
                <td>$45,500</td>
                <td>$466</td>
                <td>$64,500</td>
                <td>$594</td>
                <td>$83,500</td>
                <td>$722</td>
            </tr>
            <tr>
                <td>$27,000</td>
                <td>$340</td>
                <td>$46,000</td>
                <td>$469</td>
                <td>$65,000</td>
                <td>$597</td>
                <td>$84,000</td>
                <td>$725</td>
            </tr>
        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-even">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$27,500</td>
                <td>$343</td>
                <td>$46,500</td>
                <td>$473</td>
                <td>$65,500</td>
                <td>$600</td>
                <td>$84,500</td>
                <td>$729</td>
            </tr>
            <tr>
                <td>$28,000</td>
                <td>$347</td>
                <td>$47,000</td>
                <td>$475</td>
                <td>$66,000</td>
                <td>$604</td>
                <td>$85,000</td>
                <td>$732</td>
            </tr>
            <tr>
                <td>$28,500</td>
                <td>$350</td>
                <td>$47,500</td>
                <td>$478</td>
                <td>$66,500</td>
                <td>$609</td>
                <td>$85,500</td>
                <td>$735</td>
            </tr>
            <tr>
                <td>$29,000</td>
                <td>$355</td>
                <td>$48,000</td>
                <td>$483</td>
                <td>$67,000</td>
                <td>$612</td>
                <td>$86,000</td>
                <td>$738</td>
            </tr>
            <tr>
                <td>$29,500</td>
                <td>$358</td>
                <td>$48,500</td>
                <td>$487</td>
                <td>$67,500</td>
                <td>$613</td>
                <td>$86,500</td>
                <td>$743</td>
            </tr>
        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-odd">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$30,000</td>
                <td>$361</td>
                <td>$49,000</td>
                <td>$490</td>
                <td>$68,000</td>
                <td>$617</td>
                <td>$87,000</td>
                <td>$747</td>
            </tr>
            <tr>
                <td>$30,500</td>
                <td>$364</td>
                <td>$49,500</td>
                <td>$493</td>
                <td>$68,500</td>
                <td>$621</td>
                <td>$87,500</td>
                <td>$749</td>
            </tr>
            <tr>
                <td>$31,000</td>
                <td>$368</td>
                <td>$50,000</td>
                <td>$496</td>
                <td>$69,000</td>
                <td>$624</td>
                <td>$88,000</td>
                <td>$752</td>
            </tr>
            <tr>
                <td>$31,500</td>
                <td>$371</td>
                <td>$50,500</td>
                <td>$499</td>
                <td>$69,500</td>
                <td>$627</td>
                <td>$88,500</td>
                <td>$756</td>
            </tr>
            <tr>
                <td>$32,000</td>
                <td>$374</td>
                <td>$51,000</td>
                <td>$501</td>
                <td>$70,000</td>
                <td>$631</td>
                <td>$89,000</td>
                <td>$760</td>
            </tr>
        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-even">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$32,500</td>
                <td>$378</td>
                <td>$51,500</td>
                <td>$505</td>
                <td>$70,500</td>
                <td>$635</td>
                <td>$89,500</td>
                <td>$762</td>
            </tr>
            <tr>
                <td>$33,000</td>
                <td>$381</td>
                <td>$52,000</td>
                <td>$510</td>
                <td>$71,000</td>
                <td>$639</td>
                <td>$90,000</td>
                <td>$765</td>
            </tr>
            <tr>
                <td>$33,500</td>
                <td>$385</td>
                <td>$52,500</td>
                <td>$514</td>
                <td>$71,500</td>
                <td>$641</td>
                <td>$90,500</td>
                <td>$769</td>
            </tr>
            <tr>
                <td>$34,000</td>
                <td>$388</td>
                <td>$53,000</td>
                <td>$516</td>
                <td>$72,000</td>
                <td>$644</td>
                <td>$91,000</td>
                <td>$773</td>
            </tr>
            <tr>
                <td>$34,500</td>
                <td>$392</td>
                <td>$53,500</td>
                <td>$520</td>
                <td>$72,500</td>
                <td>$648</td>
                <td>$91,500</td>
                <td>$777</td>
            </tr>
            
        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-odd">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$35,000</td>
                <td>$395</td>
                <td>$54,000</td>
                <td>$523</td>
                <td>$73,000</td>
                <td>$651</td>
                <td>$92,000</td>
                <td>$779</td>
            </tr>
            <tr>
                <td>$35,500</td>
                <td>$398</td>
                <td>$54,500</td>
                <td>$526</td>
                <td>$73,500</td>
                <td>$654</td>
                <td>$92,500</td>
                <td>$783</td>
            </tr>
            <tr>
                <td>$36,000</td>
                <td>$401</td>
                <td>$55,000</td>
                <td>$529</td>
                <td>$74,000</td>
                <td>$658</td>
                <td>$93,000</td>
                <td>$786</td>
            </tr>
            <tr>
                <td>$36,500</td>
                <td>$405</td>
                <td>$55,500</td>
                <td>$532</td>
                <td>$74,500</td>
                <td>$662</td>
                <td>$93,500</td>
                <td>$790</td>
            </tr>
            <tr>
                <td>$37,000</td>
                <td>$408</td>
                <td>$56,000</td>
                <td>$537</td>
                <td>$75,000</td>
                <td>$666</td>
                <td>$94,000</td>
                <td>$791</td>
            </tr>
        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-even">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$37,500</td>
                <td>$412</td>
                <td>$56,500</td>
                <td>$540</td>
                <td>$75,500</td>
                <td>$668</td>
                <td>$94,500</td>
                <td>$796</td>
            </tr>
            <tr>
                <td>$38,000</td>
                <td>$416</td>
                <td>$57,000</td>
                <td>$543</td>
                <td>$76,000</td>
                <td>$671</td>
                <td>$95,000</td>
                <td>$801</td>
            </tr>
            <tr>
                <td>$38,500</td>
                <td>$419</td>
                <td>$57,500</td>
                <td>$547</td>
                <td>$76,500</td>
                <td>$674</td>
                <td>$95,500</td>
                <td>$804</td>
            </tr>
            <tr>
                <td>$39,000</td>
                <td>$421</td>
                <td>$58,000</td>
                <td>$551</td>
                <td>$77,000</td>
                <td>$678</td>
                <td>$96,000</td>
                <td>$805</td>
            </tr>
            <tr>
                <td>$39,500</td>
                <td>$425</td>
                <td>$58,500</td>
                <td>$553</td>
                <td>$77,500</td>
                <td>$681</td>
                <td>$96,500</td>
                <td>$809</td>
            </tr>

        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-odd">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$40,000</td>
                <td>$428</td>
                <td>$59,000</td>
                <td>$556</td>
                <td>$78,000</td>
                <td>$685</td>
                <td>$97,000</td>
                <td>$813</td>
            </tr>
            <tr>
                <td>$40,500</td>
                <td>$433</td>
                <td>$59,500</td>
                <td>$560</td>
                <td>$78,500</td>
                <td>$689</td>
                <td>$97,500</td>
                <td>$817</td>
            </tr>
            <tr>
                <td>$41,000</td>
                <td>$435</td>
                <td>$60,000</td>
                <td>$564</td>
                <td>$79,000</td>
                <td>$693</td>
                <td>$98,000</td>
                <td>$820</td>
            </tr>
            <tr>
                <td>$41,500</td>
                <td>$439</td>
                <td>$60,500</td>
                <td>$568</td>
                <td>$79,500</td>
                <td>$694</td>
                <td>$98,500</td>
                <td>$824</td>
            </tr>
            <tr>
                <td>$42,000</td>
                <td>$442</td>
                <td>$61,000</td>
                <td>$571</td>
                <td>$80,000</td>
                <td>$698</td>
                <td>$99,000</td>
                <td>$827</td>
            </tr>
        </tbody>
    </table>
    
    <table class="tbl-calculator tbl-even">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>

            <tr>
                <td>$42,500</td>
                <td>$446</td>
                <td>$61,500</td>
                <td>$573</td>
                <td>$80,500</td>
                <td>$702</td>
                <td>$99,500</td>
                <td>$830</td>
            </tr>
            <tr>
                <td>$43,000</td>
                <td>$448</td>
                <td>$62,000</td>
                <td>$577</td>
                <td>$81,000</td>
                <td>$706</td>
                <td>$100,000</td>
                <td>$832</td>
            </tr>
            <tr>
                <td>$43,500</td>
                <td>$452</td>
                <td>$62,500</td>
                <td>$581</td>
                <td>$81,500</td>
                <td>$708</td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
    </table>
    
    <!-- <table class="tbl-calculator tbl-odd">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>90,000</td>
                <td>804</td>
                <td>92,500</td>
                <td>823</td>
                <td>95,000</td>
                <td>842</td>
                <td>97,500</td>
                <td>859</td>
            </tr>
            <tr>
                <td>90,500</td>
                <td>809</td>
                <td>93,000</td>
                <td>827</td>
                <td>95,500</td>
                <td>845</td>
                <td>98,000</td>
                <td>862</td>
            </tr>
            <tr>
                <td>91,000</td>
                <td>813</td>
                <td>93,500</td>
                <td>831</td>
                <td>96,000</td>
                <td>847</td>
                <td>98,500</td>
                <td>866</td>
            </tr>
            <tr>
                <td>91,500</td>
                <td>817</td>
                <td>94,000</td>
                <td>832</td>
                <td>96,500</td>
                <td>851</td>
                <td>99,000</td>
                <td>870</td>
            </tr>
            <tr>
                <td>92,000</td>
                <td>819</td>
                <td>94,500</td>
                <td>837</td>
                <td>97,000</td>
                <td>855</td>
                <td>99,500</td>
                <td>873</td>
            </tr>
        </tbody>
    </table> -->
    
    <table class="tbl-calculator tbl-even">
        <thead>
            <tr>
                <td>Policies up<br>to and including</td>
                <td>Basic<br>Premium</td>
                <td colspan="6">&nbsp;</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>$100,000</td>
                <td>$832</td>
                <td colspan="6"><a href="#top">For policies over $100,000 use our calculator</a></td>
            </tr>
        </tbody>
    </table>
        </li>
    </ul>
			</div>
			
            <uc1:QuickLinks runat="server" ID="QuickLinks" />
		</div>
  </div>
</asp:Content>

