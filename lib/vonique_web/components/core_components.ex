defmodule VoniqueWeb.CoreComponents do
  @moduledoc """
  Provides core UI components.

  The components in this module use Tailwind CSS, a utility-first CSS framework.
  See the [Tailwind CSS documentation](https://tailwindcss.com) to learn how to
  customize the generated components in this module.

  Icons are provided by [heroicons](https://heroicons.com), using the
  [heroicons_elixir](https://github.com/mveytsman/heroicons_elixir) project.
  """
  use Phoenix.Component

  alias Phoenix.LiveView.JS
  import VoniqueWeb.Gettext

  attr :id, :string, required: true

  def mobile_header_vonique(assigns) do
    ~H"""
    <div class="iphone-menu" id="iphoneMenu">
      <div>
        <div class="lang_select absolute -top-24 left-16 flex flex-row space-x-2 items-center text-4xl">
          <a href="#">中</a>
          <span>|</span>
          <a href="#" class="">EN</a>
        </div>
        <div class="link-hover-white" phx-hook="ToggleMenuToHome" id="toggle_menu_1">
          <span>HOME</span>
        </div>
        <div class="link-hover-white contact-us" phx-hook="ToggleMenu" id="toggle_menu_2">
          <span>CONTACT US</span>
        </div>
        <div class="link-hover-white trial-btn" phx-hook="ToggleMenu" id="toggle_menu_3">
          <span>TRIALS</span>
        </div>
        <div class="link-hover-white">
          <span phx-hook="ToggleServiceMenu" data-page="0" id="mobile_our_services">
            OUR SERVICES
          </span>
          <div class="our-service-iphone" id="ourserviceIphone">
            <div phx-hook="SectionTopChangeContent" data-page="0" id="our_serviceiphone_1">
              <span>BRIGHTENING &</span><span>WHITENING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="1" id="our_serviceiphone_2">
              <span>TIGHTENING & </span><span>REJUVENTION</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="2" id="our_serviceiphone_3">
              <span>MOISTURIZING & </span><span>NOURSHING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="3" id="our_serviceiphone_4">
              <span>CONTOUR LIFTING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="4" id="our_serviceiphone_5">
              <span>PEELING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="5" id="our_serviceiphone_6">
              <span>SOLUTIONS FOR </span><span>EYES AND NECK</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="6" id="our_serviceiphone_7">
              <span>HAIR REMOVAL</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="7" id="our_serviceiphone_8">
              <span>SHAPE & FITNESS</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="8" id="our_serviceiphone_9">
              <span>RELEASE AND </span><span>RELAX</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="9" id="our_serviceiphone10">
              <span>PAIN MANAGEMENT</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="10" id="our_serviceiphone11">
              <span>PERFECTION</span>
            </div>
          </div>
        </div>
        <div class="iphone-menu-close" phx-hook="ToggleMenu" id="toggle_menu_5"></div>
      </div>
    </div>
    <div class="iphone-menu" id="osiphoneMenu">
      <div>
        <div class="link-hover-white" onclick="osiphoneToggle(),osSectionToponly()">
          <span>HOME</span>
        </div>
        <div class="link-hover-white contact-us" onclick="osiphoneToggle()">
          <span>CONTACT US</span>
        </div>
        <div class="link-hover-white trial-btn" onclick="osiphoneToggle()"><span>TRIALS</span></div>
        <div class="link-hover-white" onclick="osiphoneOurservice()">
          <span phx-hook="SectionTop" data-page="0" id="our_services">OUR SERVICES</span>
          <div class="our-service-iphone" id="osourserviceIphone">
            <div phx-hook="SectionTopChangeContent" data-page="0" id="our_service_iphone_1">
              <span>BRIGHTENING &</span><span>WHITENING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="1" id="our_service_iphone_2">
              <span>TIGHTENING & </span><span>REJUVENTION</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="2" id="our_service_iphone_3">
              <span>MOISTURIZING & </span><span>NOURSHING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="3" id="our_service_iphone_4">
              <span>CONTOUR LIFTING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="4" id="our_service_iphone_5">
              <span>PEELING</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="5" id="our_service_iphone_6">
              <span>SOLUTIONS FOR </span><span>EYES AND NECK</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="6" id="our_service_iphone_7">
              <span>HAIR REMOVAL</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="7" id="our_service_iphone_8">
              <span>SHAPE & FITNESS</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="8" id="our_service_iphone_9">
              <span>RELEASE AND </span><span>RELAX</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="9" id="our_service_iphone10">
              <span>PAIN MANAGEMENT</span>
            </div>
            <div phx-hook="SectionTopChangeContent" data-page="10" id="our_service_iphone11">
              <span>PERFECTION</span>
            </div>
          </div>
        </div>
        <div class="iphone-menu-close" phx-hook="ToggleServiceIphoneMenu" id="toggle_iphonemenu_5">
        </div>
      </div>
    </div>
    """
  end

  attr :id, :string, required: true

  def service_header_vonique(assigns) do
    ~H"""
    <section class="os-section" id="osSection">
      <div class="os-headers">
        <div class="os-header">
          <.logo id="service_header" />

          <div class="os-header-menu link--hover">
            <div>
              <div id="ourservice"></div>
              <div class="trial-btn"><span>TRIALS</span></div>
            </div>
            <div>
              <div id="contactus" class="contact-us"><span>CONTACT US</span></div>
              <div id="homelink" phx-hook="SectionTopOnly"><span>HOME</span></div>
            </div>
          </div>
          <div class="big-services">
            <div>
              / Our Services.
            </div>
          </div>
          <div class="header-iphone">
            <div></div>
            <div></div>
          </div>
          <div class="info" id="headinfo">
            <div class="sound">
              <span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
            </div>
            <div class="i">
              <svg
                width="9"
                height="18"
                viewBox="0 0 9 18"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                alt=""
              >
                <path d="M6.1282 5.24018H5.7682C5.0962 5.72018 4.1602 5.96018 2.3602 5.96018H0.200195V6.44018H3.2002C4.2802 6.44018 4.2562 6.56017 3.8482 7.52018L2.1442 11.7442C1.4962 13.2562 1.1842 14.1682 1.1842 15.0082C1.1842 16.8082 2.6002 17.3602 3.5602 17.3602C5.0722 17.3602 6.5122 16.1602 7.9762 13.4242L8.2402 12.9442L7.8082 12.7042L7.5442 13.1842C6.3922 15.3442 5.1202 16.7602 3.8002 16.7602C3.0802 16.7602 2.2882 16.4002 2.2882 15.2002C2.2882 14.6002 2.5282 14.0242 3.2482 12.2722L6.1282 5.24018ZM5.2402 1.88017C5.2402 2.55217 5.7682 3.08017 6.4402 3.08017C7.1122 3.08017 7.6402 2.55217 7.6402 1.88017C7.6402 1.20817 7.1122 0.680176 6.4402 0.680176C5.7682 0.680176 5.2402 1.20817 5.2402 1.88017Z">
                </path>
              </svg>
            </div>
          </div>
        </div>
      </div>
      <div class="os-iphone-title" id="osiphoneTitle">
        BRIGHTENING & WHITENING
      </div>
      <div class="os-content">
        <div class="os-one-content" id="onecontent"></div>
        <div class="os-two-content" id="twocontent"></div>
        <div class="os-three-content" id="threecontent">
          <div class="os-our-service link--hover">
            <div
              phx-hook="ChangeContent"
              id="our_service_item_1"
              data-page="0"
              class="linkcontentList"
            >
              <span>BRIGHTENING & WHITENING</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_2"
              data-page="1"
              class="linkcontentList"
            >
              <span>TIGHTENING & REJUVENTION</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_3"
              data-page="2"
              class="linkcontentList"
            >
              <span>MOISTURIZING & NOURSHING</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_4"
              data-page="3"
              class="linkcontentList"
            >
              <span>CONTOUR LIFTING</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_5"
              data-page="4"
              class="linkcontentList"
            >
              <span>PEELING</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_6"
              data-page="5"
              class="linkcontentList"
            >
              <span>SOLUTIONS FOR EYES AND NECK</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_7"
              data-page="6"
              class="linkcontentList"
            >
              <span>HAIR REMOVAL</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_8"
              data-page="7"
              class="linkcontentList"
            >
              <span>SHAPE & FITNESS</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_9"
              data-page="8"
              class="linkcontentList"
            >
              <span>RELEASE AND RELAX</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_10"
              data-page="9"
              class="linkcontentList"
            >
              <span>PAIN MANAGEMENT</span>
            </div>
            <div
              phx-hook="ChangeContent"
              id="our_service_item_11"
              data-page="10"
              class="linkcontentList"
            >
              <span>PERFECTION</span>
            </div>
          </div>
        </div>
      </div>
      <div class="os-footer" id="footer">
        <div>
          Pigmentation are formed by melanin, a common condition on any ages and gender that makes some areas of the skin darker than others. According to our professional analysis, freckles, sunburn, melasma, age spots, nevus of Ota etc. can be easily removal by our recommended aesthetic regimens.
        </div>
      </div>
      <div class="os-footer-btn" phx-hook="ToggleMobileSideBar" id="os_footer_btn">
        <svg>
          <polyline points="10,0 30,20 50,0"></polyline>
        </svg>
      </div>
    </section>
    """
  end

  attr :id, :string, required: true
  attr :is_main, :boolean, default: false

  def header_vonique(assigns) do
    ~H"""
    <div
      class="header"
      id={
        if @is_main do
          "mainheader"
        else
          ""
        end
      }
    >
      <div class="header-menu link--hover">
        <div>
          <div id="ourservice">
            <span phx-hook="SectionTop" data-page="0" id="our_services">OUR SERVICES</span>
            <div class="our-service">
              <div phx-hook="SectionTop" data-page="0" id="our_service_1">
                <span>BRIGHTENING & WHITENING</span>
              </div>
              <div phx-hook="SectionTop" data-page="1" id="our_service_2">
                <span>TIGHTENING & REJUVENTION</span>
              </div>
              <div phx-hook="SectionTop" data-page="2" id="our_service_3">
                <span>MOISTURIZING & NOURSHING</span>
              </div>
              <div phx-hook="SectionTop" data-page="3" id="our_service_4">
                <span>CONTOUR LIFTING</span>
              </div>
              <div phx-hook="SectionTop" data-page="4" id="our_service_5"><span>PEELING</span></div>
              <div phx-hook="SectionTop" data-page="5" id="our_service_6">
                <span>SOLUTIONS FOR EYES AND NECK</span>
              </div>
              <div phx-hook="SectionTop" data-page="6" id="our_service_7">
                <span>HAIR REMOVAL</span>
              </div>
              <div phx-hook="SectionTop" data-page="7" id="our_service_8">
                <span>SHAPE & FITNESS</span>
              </div>
              <div phx-hook="SectionTop" data-page="8" id="our_service_9">
                <span>RELEASE AND RELAX</span>
              </div>
              <div phx-hook="SectionTop" data-page="9" id="our_service_10">
                <span>PAIN MANAGEMENT</span>
              </div>
              <div phx-hook="SectionTop" data-page="10" id="our_service_11">
                <span>PERFECTION</span>
              </div>
            </div>
          </div>
          <div class="trial-btn"><span>TRIALS</span></div>
        </div>
        <div>
          <div id="contactus" class="contact-us"><span>CONTACT US</span></div>
          <div id="homelink" phx-hook="SectionTopOnly"><span>HOME</span></div>
        </div>
        <div class="lang_select top-0 left-8 flex flex-row space-x-2 items-center">
          <a href="#">中</a>
          <span>|</span>
          <a href="#" class="">EN</a>
        </div>
      </div>
      <.logo id={@id} />
      <div class="header-iphone">
        <div></div>
        <div></div>
      </div>
      <div class="info justify-between" id="headinfo">
        <div
          style="width: 33px;font-size: 14px;"
          class="lang_select top-0 left-8 flex flex-row space-x-2 items-center"
        >
          <a href="#">中</a>
          <span>|</span>
          <a href="#" class="">EN</a>
        </div>
        <div class="i">
          <svg
            width="9"
            height="18"
            viewBox="0 0 9 18"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            alt=""
          >
            <path d="M6.1282 5.24018H5.7682C5.0962 5.72018 4.1602 5.96018 2.3602 5.96018H0.200195V6.44018H3.2002C4.2802 6.44018 4.2562 6.56017 3.8482 7.52018L2.1442 11.7442C1.4962 13.2562 1.1842 14.1682 1.1842 15.0082C1.1842 16.8082 2.6002 17.3602 3.5602 17.3602C5.0722 17.3602 6.5122 16.1602 7.9762 13.4242L8.2402 12.9442L7.8082 12.7042L7.5442 13.1842C6.3922 15.3442 5.1202 16.7602 3.8002 16.7602C3.0802 16.7602 2.2882 16.4002 2.2882 15.2002C2.2882 14.6002 2.5282 14.0242 3.2482 12.2722L6.1282 5.24018ZM5.2402 1.88017C5.2402 2.55217 5.7682 3.08017 6.4402 3.08017C7.1122 3.08017 7.6402 2.55217 7.6402 1.88017C7.6402 1.20817 7.1122 0.680176 6.4402 0.680176C5.7682 0.680176 5.2402 1.20817 5.2402 1.88017Z">
            </path>
          </svg>
        </div>
        <div class="sound">
          <span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
        </div>
      </div>
      <div :if={@id == "seven_header"} class="seven-list link--hover" id="sevenList">
        <div phx-hook="SectionTop" data-page="0" id="our_servicelink_1">
          <span>BRIGHTENING & WHITENING</span>
        </div>
        <div phx-hook="SectionTop" data-page="1" id="our_servicelink_2">
          <span>TIGHTENING & REJUVENTION</span>
        </div>
        <div phx-hook="SectionTop" data-page="2" id="our_servicelink_3">
          <span>MOISTURIZING & NOURSHING</span>
        </div>
        <div phx-hook="SectionTop" data-page="3" id="our_servicelink_4">
          <span>CONTOUR LIFTING</span>
        </div>
        <div phx-hook="SectionTop" data-page="4" id="our_servicelink_5"><span>PEELING</span></div>
        <div phx-hook="SectionTop" data-page="5" id="our_servicelink_6">
          <span>SOLUTIONS FOR EYES AND NECK</span>
        </div>
        <div phx-hook="SectionTop" data-page="6" id="our_servicelink_7">
          <span>HAIR REMOVAL</span>
        </div>
        <div phx-hook="SectionTop" data-page="7" id="our_servicelink_8">
          <span>SHAPE & FITNESS</span>
        </div>
        <div phx-hook="SectionTop" data-page="8" id="our_servicelink_9">
          <span>RELEASE AND RELAX</span>
        </div>
        <div phx-hook="SectionTop" data-page="9" id="our_servicelink10">
          <span>PAIN MANAGEMENT</span>
        </div>
        <div phx-hook="SectionTop" data-page="10" id="our_servicelink11"><span>PERFECTION</span></div>
      </div>
      <div :if={@id == "seven_header"} class="seven-list-mobile">
        <div phx-hook="SectionTop" data-page="0" id="our_servicemlink_1">
          <span>BRIGHTENING</span> <br /><span>& WHITENING</span>
        </div>
        <div phx-hook="SectionTop" data-page="1" id="our_servicemlink_2">
          <span>TIGHTENING &</span> <br /><span>REJUVENTION</span>
        </div>
        <div phx-hook="SectionTop" data-page="2" id="our_servicemlink_3">
          <span>MOISTURIZING &</span> <br /><span>NOURSHING</span>
        </div>
        <div phx-hook="SectionTop" data-page="3" id="our_servicemlink_4">
          <span>CONTOUR LIFTING</span>
        </div>
        <div phx-hook="SectionTop" data-page="4" id="our_servicemlink_5"><span>PEELING</span></div>
        <div phx-hook="SectionTop" data-page="5" id="our_servicemlink_6">
          <span>SOLUTIONS FOR</span> <br /><span>EYES AND NECK</span>
        </div>
        <div phx-hook="SectionTop" data-page="6" id="our_servicemlink_7">
          <span>HAIR REMOVAL</span>
        </div>
        <div phx-hook="SectionTop" data-page="7" id="our_servicemlink_8">
          <span>SHAPE & FITNESS</span>
        </div>
        <div phx-hook="SectionTop" data-page="8" id="our_servicemlink_9">
          <span>RELEASE AND</span> <br /><span>RELAX</span>
        </div>
        <div phx-hook="SectionTop" data-page="9" id="our_servicemlink10">
          <span>PAIN MANAGEMENT</span>
        </div>
        <div phx-hook="SectionTop" data-page="10" id="our_servicemlink11">
          <span>PERFECTION</span>
        </div>
      </div>
    </div>
    """
  end

  attr :id, :string, required: true

  def logo(assigns) do
    ~H"""
    <div class="welcome__title" id={@id} phx-hook="SectionTopOnly">
      <img :if={false} src="/assets/image/logo.svg" />
      <svg
        :if={true}
        width="100%"
        height="100%"
        viewBox="0 0 399 96"
        version="1.1"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink"
        xml:space="preserve"
        xmlns:serif="http://www.serif.com/"
        style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:2;"
      >
        <g transform="matrix(2,0,0,2,232.179,94.4006)">
          <path
            d="M0,-4.209C-0.171,-4.195 -0.296,-4.167 -0.375,-4.125C-0.453,-4.082 -0.515,-4.009 -0.561,-3.904C-0.607,-3.8 -0.667,-3.613 -0.742,-3.344L-1.734,0.323L-2.222,0.323L-3.442,-3.105L-4.585,0.323L-5.067,0.323L-6.171,-3.446C-6.237,-3.671 -6.297,-3.837 -6.352,-3.945C-6.407,-4.053 -6.472,-4.124 -6.546,-4.158C-6.619,-4.192 -6.724,-4.209 -6.86,-4.209L-6.86,-4.532L-4.796,-4.532L-4.796,-4.209C-4.958,-4.209 -5.076,-4.196 -5.151,-4.17C-5.226,-4.144 -5.264,-4.075 -5.264,-3.963C-5.264,-3.888 -5.237,-3.76 -5.183,-3.58L-4.487,-1.199L-3.369,-4.532L-2.908,-4.532L-1.727,-1.199L-1.129,-3.435C-1.087,-3.587 -1.065,-3.71 -1.065,-3.805C-1.065,-3.976 -1.119,-4.085 -1.225,-4.132C-1.332,-4.178 -1.469,-4.204 -1.635,-4.209L-1.635,-4.532L0,-4.532L0,-4.209Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,241.286,88.471)">
          <path
            d="M0,1.632L-0.039,3.2L-4.286,3.2L-4.286,2.877C-3.993,2.877 -3.805,2.835 -3.72,2.75C-3.636,2.666 -3.594,2.521 -3.594,2.314L-3.594,-0.682C-3.594,-0.817 -3.607,-0.924 -3.634,-1C-3.661,-1.076 -3.724,-1.136 -3.824,-1.179C-3.923,-1.222 -4.078,-1.244 -4.286,-1.244L-4.286,-1.568L-0.331,-1.568L-0.267,-0.33L-0.591,-0.33C-0.664,-0.604 -0.747,-0.801 -0.842,-0.919C-0.937,-1.038 -1.044,-1.11 -1.162,-1.137C-1.281,-1.164 -1.458,-1.178 -1.695,-1.178L-2.588,-1.178L-2.588,0.507L-2.103,0.507C-1.936,0.507 -1.812,0.492 -1.73,0.463C-1.648,0.434 -1.59,0.378 -1.558,0.296C-1.525,0.214 -1.503,0.085 -1.491,-0.091L-1.153,-0.091L-1.153,1.495L-1.477,1.495C-1.486,1.319 -1.51,1.19 -1.547,1.107C-1.585,1.023 -1.644,0.967 -1.725,0.939C-1.806,0.911 -1.929,0.897 -2.096,0.897L-2.588,0.897L-2.588,2.019C-2.588,2.207 -2.583,2.344 -2.574,2.43C-2.564,2.517 -2.539,2.589 -2.498,2.647C-2.457,2.704 -2.39,2.746 -2.298,2.771C-2.205,2.797 -2.074,2.81 -1.902,2.81L-1.519,2.81C-1.357,2.81 -1.203,2.79 -1.057,2.749C-0.91,2.707 -0.767,2.602 -0.626,2.432C-0.485,2.262 -0.387,1.996 -0.331,1.632L0,1.632Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,250.716,88.5218)">
          <path
            d="M0,1.582L-0.032,3.175L-4.279,3.175L-4.279,2.851C-3.986,2.851 -3.798,2.809 -3.713,2.725C-3.629,2.64 -3.587,2.496 -3.587,2.289L-3.587,-0.707C-3.587,-0.845 -3.601,-0.953 -3.629,-1.028C-3.657,-1.105 -3.722,-1.164 -3.824,-1.206C-3.926,-1.249 -4.078,-1.27 -4.279,-1.27L-4.279,-1.593L-1.881,-1.593L-1.881,-1.27C-2.081,-1.27 -2.231,-1.249 -2.333,-1.21C-2.435,-1.17 -2.502,-1.112 -2.533,-1.035C-2.565,-0.96 -2.581,-0.85 -2.581,-0.707L-2.581,2.036C-2.581,2.251 -2.57,2.406 -2.549,2.5C-2.528,2.594 -2.471,2.664 -2.377,2.713C-2.283,2.761 -2.13,2.785 -1.916,2.785C-1.647,2.785 -1.411,2.764 -1.208,2.723C-1.005,2.682 -0.818,2.573 -0.645,2.396C-0.473,2.219 -0.366,1.948 -0.323,1.582L0,1.582Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,260.02,88.5218)">
          <path
            d="M0,1.582L-0.032,3.175L-4.279,3.175L-4.279,2.851C-3.986,2.851 -3.798,2.809 -3.713,2.725C-3.629,2.64 -3.587,2.496 -3.587,2.289L-3.587,-0.707C-3.587,-0.845 -3.601,-0.953 -3.629,-1.028C-3.657,-1.105 -3.722,-1.164 -3.824,-1.206C-3.926,-1.249 -4.078,-1.27 -4.279,-1.27L-4.279,-1.593L-1.881,-1.593L-1.881,-1.27C-2.081,-1.27 -2.231,-1.249 -2.333,-1.21C-2.435,-1.17 -2.502,-1.112 -2.533,-1.035C-2.565,-0.96 -2.581,-0.85 -2.581,-0.707L-2.581,2.036C-2.581,2.251 -2.57,2.406 -2.549,2.5C-2.528,2.594 -2.471,2.664 -2.377,2.713C-2.283,2.761 -2.13,2.785 -1.916,2.785C-1.647,2.785 -1.411,2.764 -1.208,2.723C-1.005,2.682 -0.818,2.573 -0.645,2.396C-0.473,2.219 -0.366,1.948 -0.323,1.582L0,1.582Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,271.139,94.3106)">
          <path
            d="M0,-4.164C-0.228,-4.164 -0.39,-4.141 -0.489,-4.095C-0.587,-4.049 -0.648,-3.982 -0.672,-3.893C-0.695,-3.804 -0.707,-3.658 -0.707,-3.457L-0.707,0.323L-1.03,0.323L-4.149,-3.383L-4.149,-0.757C-4.149,-0.557 -4.137,-0.413 -4.112,-0.322C-4.088,-0.232 -4.025,-0.163 -3.924,-0.115C-3.823,-0.067 -3.66,-0.043 -3.435,-0.043L-3.435,0.281L-5.208,0.281L-5.208,-0.043C-4.997,-0.043 -4.844,-0.067 -4.749,-0.115C-4.654,-0.163 -4.595,-0.232 -4.573,-0.322C-4.551,-0.413 -4.539,-0.557 -4.539,-0.757L-4.539,-3.19C-4.539,-3.387 -4.545,-3.535 -4.555,-3.633C-4.566,-3.732 -4.591,-3.817 -4.631,-3.891C-4.671,-3.965 -4.736,-4.025 -4.826,-4.07C-4.916,-4.116 -5.041,-4.147 -5.201,-4.164L-5.201,-4.487L-3.812,-4.487L-1.097,-1.281L-1.097,-3.457C-1.097,-3.635 -1.109,-3.772 -1.134,-3.867C-1.159,-3.961 -1.219,-4.035 -1.317,-4.087C-1.414,-4.138 -1.568,-4.164 -1.779,-4.164L-1.779,-4.487L0,-4.487L0,-4.164Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,280.281,88.471)">
          <path
            d="M0,1.632L-0.039,3.2L-4.286,3.2L-4.286,2.877C-3.993,2.877 -3.805,2.835 -3.72,2.75C-3.636,2.666 -3.594,2.521 -3.594,2.314L-3.594,-0.682C-3.594,-0.817 -3.607,-0.924 -3.634,-1C-3.661,-1.076 -3.724,-1.136 -3.824,-1.179C-3.923,-1.222 -4.078,-1.244 -4.286,-1.244L-4.286,-1.568L-0.331,-1.568L-0.267,-0.33L-0.591,-0.33C-0.664,-0.604 -0.747,-0.801 -0.842,-0.919C-0.937,-1.038 -1.044,-1.11 -1.162,-1.137C-1.281,-1.164 -1.458,-1.178 -1.695,-1.178L-2.588,-1.178L-2.588,0.507L-2.103,0.507C-1.936,0.507 -1.812,0.492 -1.73,0.463C-1.648,0.434 -1.59,0.378 -1.558,0.296C-1.525,0.214 -1.503,0.085 -1.491,-0.091L-1.153,-0.091L-1.153,1.495L-1.477,1.495C-1.486,1.319 -1.51,1.19 -1.547,1.107C-1.585,1.023 -1.644,0.967 -1.725,0.939C-1.806,0.911 -1.929,0.897 -2.096,0.897L-2.588,0.897L-2.588,2.019C-2.588,2.207 -2.583,2.344 -2.574,2.43C-2.564,2.517 -2.539,2.589 -2.498,2.647C-2.457,2.704 -2.39,2.746 -2.298,2.771C-2.205,2.797 -2.074,2.81 -1.902,2.81L-1.519,2.81C-1.357,2.81 -1.203,2.79 -1.057,2.749C-0.91,2.707 -0.767,2.602 -0.626,2.432C-0.485,2.262 -0.387,1.996 -0.331,1.632L0,1.632Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,288.439,88.078)">
          <path
            d="M0,2.029C0,2.177 -0.032,2.334 -0.095,2.499C-0.158,2.664 -0.254,2.822 -0.382,2.973C-0.509,3.125 -0.671,3.248 -0.865,3.343C-1.059,3.438 -1.284,3.485 -1.54,3.485C-1.793,3.485 -2.045,3.43 -2.294,3.319C-2.544,3.21 -2.756,3.045 -2.929,2.827C-3.004,3.001 -3.052,3.161 -3.073,3.309L-3.397,3.309L-3.397,1.677L-3.073,1.677C-3.014,1.912 -2.934,2.132 -2.831,2.338C-2.728,2.545 -2.582,2.722 -2.393,2.871C-2.204,3.02 -1.973,3.094 -1.698,3.094C-1.459,3.094 -1.268,3.029 -1.123,2.897C-0.979,2.767 -0.907,2.601 -0.907,2.402C-0.907,2.289 -0.929,2.191 -0.974,2.106C-1.019,2.022 -1.083,1.947 -1.167,1.88C-1.252,1.813 -1.367,1.741 -1.514,1.665C-1.66,1.589 -1.827,1.509 -2.015,1.424C-2.303,1.288 -2.54,1.151 -2.725,1.013C-2.91,0.875 -3.05,0.741 -3.145,0.611C-3.24,0.48 -3.306,0.357 -3.342,0.239C-3.378,0.122 -3.397,0.004 -3.397,-0.116C-3.397,-0.329 -3.339,-0.539 -3.224,-0.747C-3.109,-0.954 -2.941,-1.124 -2.72,-1.257C-2.498,-1.39 -2.242,-1.456 -1.952,-1.456C-1.729,-1.456 -1.517,-1.406 -1.315,-1.306C-1.114,-1.207 -0.939,-1.07 -0.791,-0.897C-0.749,-0.995 -0.71,-1.133 -0.675,-1.311L-0.345,-1.311L-0.345,0.018L-0.675,0.018C-0.91,-0.707 -1.318,-1.069 -1.899,-1.069C-2.11,-1.069 -2.279,-1.013 -2.407,-0.901C-2.535,-0.79 -2.599,-0.647 -2.599,-0.471C-2.599,-0.333 -2.559,-0.212 -2.479,-0.11C-2.399,-0.008 -2.294,0.079 -2.164,0.151C-2.034,0.224 -1.824,0.328 -1.533,0.464C-1.181,0.631 -0.906,0.775 -0.709,0.897C-0.511,1.019 -0.343,1.172 -0.206,1.357C-0.069,1.543 0,1.767 0,2.029"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,296.695,88.078)">
          <path
            d="M0,2.029C0,2.177 -0.032,2.334 -0.095,2.499C-0.158,2.664 -0.254,2.822 -0.381,2.973C-0.509,3.125 -0.671,3.248 -0.865,3.343C-1.059,3.438 -1.284,3.485 -1.54,3.485C-1.793,3.485 -2.045,3.43 -2.294,3.319C-2.544,3.21 -2.756,3.045 -2.929,2.827C-3.004,3.001 -3.052,3.161 -3.073,3.309L-3.397,3.309L-3.397,1.677L-3.073,1.677C-3.014,1.912 -2.934,2.132 -2.831,2.338C-2.728,2.545 -2.582,2.722 -2.393,2.871C-2.204,3.02 -1.973,3.094 -1.698,3.094C-1.459,3.094 -1.268,3.029 -1.123,2.897C-0.979,2.767 -0.907,2.601 -0.907,2.402C-0.907,2.289 -0.929,2.191 -0.974,2.106C-1.019,2.022 -1.083,1.947 -1.167,1.88C-1.252,1.813 -1.367,1.741 -1.514,1.665C-1.66,1.589 -1.827,1.509 -2.015,1.424C-2.303,1.288 -2.54,1.151 -2.725,1.013C-2.91,0.875 -3.05,0.741 -3.145,0.611C-3.24,0.48 -3.306,0.357 -3.342,0.239C-3.378,0.122 -3.397,0.004 -3.397,-0.116C-3.397,-0.329 -3.339,-0.539 -3.224,-0.747C-3.109,-0.954 -2.941,-1.124 -2.72,-1.257C-2.498,-1.39 -2.242,-1.456 -1.951,-1.456C-1.729,-1.456 -1.517,-1.406 -1.315,-1.306C-1.114,-1.207 -0.939,-1.07 -0.791,-0.897C-0.749,-0.995 -0.71,-1.133 -0.675,-1.311L-0.345,-1.311L-0.345,0.018L-0.675,0.018C-0.91,-0.707 -1.318,-1.069 -1.899,-1.069C-2.11,-1.069 -2.279,-1.013 -2.407,-0.901C-2.534,-0.79 -2.599,-0.647 -2.599,-0.471C-2.599,-0.333 -2.559,-0.212 -2.479,-0.11C-2.399,-0.008 -2.294,0.079 -2.164,0.151C-2.034,0.224 -1.824,0.328 -1.533,0.464C-1.181,0.631 -0.906,0.775 -0.708,0.897C-0.511,1.019 -0.343,1.172 -0.206,1.357C-0.069,1.543 0,1.767 0,2.029"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,269.872,28.588)">
          <path
            d="M0,8.973C-0.432,10.923 -1.121,12.696 -2.065,14.293C-3.009,15.89 -4.241,17.202 -5.761,18.23C-7.281,19.26 -9.13,19.773 -11.305,19.773C-13.162,19.773 -14.842,19.321 -16.346,18.415C-17.85,17.509 -19.13,16.304 -20.186,14.799C-21.242,13.295 -22.05,11.568 -22.61,9.618C-23.17,7.668 -23.45,5.649 -23.45,3.56C-23.45,1.565 -23.218,-0.408 -22.754,-2.358C-22.291,-4.308 -21.571,-6.051 -20.594,-7.586C-19.618,-9.121 -18.37,-10.373 -16.85,-11.34C-15.33,-12.307 -13.53,-12.791 -11.449,-12.791C-9.402,-12.791 -7.626,-12.307 -6.121,-11.34C-4.617,-10.373 -3.361,-9.113 -2.352,-7.563C-1.344,-6.012 -0.593,-4.285 -0.096,-2.381C0.4,-0.477 0.648,1.411 0.648,3.284C0.648,5.127 0.432,7.023 0,8.973M-74.119,9.212C-74.615,11.157 -75.36,12.91 -76.351,14.47C-77.344,16.029 -78.583,17.303 -80.071,18.291C-81.56,19.28 -83.312,19.773 -85.328,19.773C-87.344,19.773 -89.113,19.326 -90.632,18.43C-92.153,17.534 -93.416,16.346 -94.425,14.863C-95.432,13.381 -96.193,11.667 -96.705,9.721C-97.217,7.776 -97.473,5.754 -97.473,3.653C-97.473,1.646 -97.241,-0.338 -96.777,-2.299C-96.313,-4.259 -95.593,-6.012 -94.617,-7.557C-93.641,-9.1 -92.393,-10.359 -90.872,-11.331C-89.353,-12.304 -87.553,-12.791 -85.472,-12.791C-83.424,-12.791 -81.648,-12.304 -80.144,-11.331C-78.64,-10.359 -77.383,-9.092 -76.375,-7.533C-75.367,-5.973 -74.615,-4.237 -74.119,-2.322C-73.623,-0.407 -73.375,1.492 -73.375,3.375C-73.375,5.321 -73.623,7.266 -74.119,9.212M64.553,11.1C64.553,10.921 64.408,10.777 64.23,10.777C64.098,10.777 63.986,10.856 63.935,10.969L63.934,10.969C63.134,12.345 62.433,13.607 61.682,14.583C60.93,15.559 60.341,16.115 59.542,16.674C58.686,17.273 57.866,17.64 57.002,18.007C56.138,18.376 55.194,18.624 54.17,18.751C53.241,18.88 52.353,18.96 51.505,18.992C50.658,19.024 49.961,19.039 49.417,19.039L44.861,19.039C44.063,19.039 43.417,18.393 43.417,17.595L43.417,12.349C43.405,12.004 43.415,7.864 43.448,5.593L43.45,5.59C43.45,4.792 44.096,4.146 44.894,4.146L45.697,4.146C46.017,4.146 46.337,4.154 46.657,4.17C46.977,4.186 47.378,4.21 47.857,4.242C48.818,4.307 49.658,4.482 50.378,4.77C51.098,5.058 51.716,5.424 52.226,5.874C53.696,7.171 54.859,9.439 54.987,11.491C54.987,11.67 55.132,11.814 55.31,11.814C55.489,11.814 55.634,11.67 55.634,11.491L55.634,-4.596C55.634,-4.774 55.489,-4.919 55.31,-4.919C55.132,-4.919 54.987,-4.774 54.987,-4.596C54.973,-3.769 54.65,-2.892 54.41,-2.172C54.17,-1.451 53.849,-0.819 53.45,-0.276C53.049,0.269 52.53,0.733 51.89,1.116C51.25,1.501 50.449,1.805 49.49,2.029C49.074,2.125 48.553,2.197 47.93,2.245C47.305,2.293 46.682,2.333 46.057,2.365C45.648,2.386 45.273,2.4 44.926,2.407L44.924,2.405C44.915,2.405 44.906,2.408 44.897,2.408C44.1,2.408 43.453,1.761 43.453,0.964C43.453,0.959 43.455,0.955 43.455,0.95C43.481,-1.793 43.54,-7.704 43.59,-10.662L43.591,-10.661C43.591,-11.459 44.237,-12.105 45.035,-12.105L47.281,-12.105C49.393,-12.105 51.187,-12.017 52.658,-11.817C58.3,-11.049 60.529,-8.855 62.889,-5.597L62.894,-5.6C62.952,-5.515 63.045,-5.455 63.156,-5.455C63.335,-5.455 63.48,-5.6 63.48,-5.779C63.48,-5.819 63.47,-5.857 63.457,-5.892L63.459,-5.893L63.455,-5.903C63.454,-5.904 63.454,-5.905 63.454,-5.906L60.616,-12.768C60.616,-12.768 60.609,-12.783 60.597,-12.805C60.396,-13.369 59.874,-13.777 59.248,-13.807C59.202,-13.813 59.177,-13.814 59.177,-13.814L27.832,-13.814C27.653,-13.814 27.508,-13.669 27.508,-13.49C27.508,-13.311 27.653,-13.167 27.832,-13.167C29.368,-13.1 30.528,-12.717 31.312,-12.158C32.096,-11.597 32.648,-10.869 32.968,-9.974C33.096,-9.653 33.192,-9.229 33.256,-8.701C33.32,-8.173 33.368,-7.605 33.4,-6.997C33.432,-6.389 33.456,-5.749 33.472,-5.077C33.488,-4.405 33.496,-3.749 33.496,-3.109L33.496,5.052C33.496,6.14 33.456,7.252 33.376,8.388C33.296,9.525 33.136,10.637 32.896,11.724C32.656,12.813 32.288,13.836 31.792,14.796C31.295,15.757 30.623,16.605 29.776,17.34C28.927,18.077 27.871,18.653 26.608,19.068C25.343,19.485 23.799,19.693 21.976,19.693C20.375,19.693 18.951,19.429 17.703,18.9C16.455,18.373 15.399,17.621 14.535,16.645C13.671,15.668 12.998,14.485 12.519,13.093C12.039,11.701 11.782,10.156 11.75,8.459C11.75,7.692 11.743,6.965 11.727,6.276C11.71,5.588 11.703,4.876 11.703,4.139L11.703,-5.413C11.703,-6.021 11.71,-6.645 11.727,-7.285C11.743,-7.925 11.767,-8.661 11.799,-9.494C11.83,-10.229 11.991,-10.838 12.278,-11.318C12.567,-11.797 12.915,-12.12 13.331,-12.392C13.747,-12.664 14.194,-12.811 14.707,-12.94C15.218,-13.068 15.701,-13.139 16.167,-13.167C16.345,-13.167 16.49,-13.311 16.49,-13.49C16.49,-13.669 16.345,-13.814 16.167,-13.814L1.862,-13.814C1.683,-13.814 1.538,-13.669 1.538,-13.49C1.538,-13.311 1.683,-13.167 1.862,-13.167C2.694,-13.07 3.448,-13.043 4.104,-12.804C4.76,-12.563 5.302,-12.197 5.75,-11.654C5.942,-11.429 6.087,-11.118 6.182,-10.718C6.278,-10.317 6.35,-9.869 6.398,-9.374C6.447,-8.876 6.47,-8.341 6.47,-7.766L6.47,0.347C6.47,0.575 6.47,0.794 6.469,1.017C6.294,-0.498 5.94,-1.97 5.4,-3.397C4.6,-5.509 3.448,-7.373 1.944,-8.99C0.44,-10.605 -1.393,-11.894 -3.553,-12.853C-5.713,-13.814 -8.154,-14.294 -10.873,-14.294C-13.177,-14.294 -15.378,-13.941 -17.474,-13.238C-19.57,-12.533 -21.466,-11.461 -23.162,-10.021C-25.773,-7.792 -27.563,-5.197 -28.536,-2.237C-28.521,-6.014 -28.508,-8.926 -28.502,-9.206C-28.486,-10.037 -28.334,-10.725 -28.046,-11.27C-27.631,-12.038 -27.05,-12.493 -26.282,-12.75C-25.514,-13.006 -24.815,-13.111 -24.11,-13.167C-23.931,-13.167 -23.786,-13.311 -23.786,-13.49C-23.786,-13.669 -23.931,-13.814 -24.11,-13.814L-48.449,-13.814C-48.628,-13.814 -48.773,-13.669 -48.773,-13.49C-48.773,-13.311 -48.628,-13.167 -48.449,-13.167C-46.922,-13.037 -45.737,-12.717 -44.921,-12.158C-44.105,-11.597 -43.537,-10.869 -43.217,-9.974C-42.961,-9.301 -42.817,-8.381 -42.785,-7.214C-42.753,-6.044 -42.737,-4.82 -42.737,-3.541L-42.737,12.499C-42.737,12.678 -42.882,12.824 -43.062,12.824C-43.163,12.824 -43.253,12.778 -43.312,12.707C-43.312,12.707 -43.315,12.704 -43.315,12.703L-64.822,-13.57L-64.83,-13.573C-64.953,-13.719 -65.136,-13.814 -65.342,-13.814L-75.564,-13.814C-75.743,-13.814 -75.888,-13.669 -75.888,-13.49C-75.888,-13.311 -75.743,-13.167 -75.564,-13.167C-75.035,-13.167 -74.516,-13.166 -73.956,-13.021C-73.396,-12.878 -72.876,-12.638 -72.396,-12.301C-71.916,-11.965 -71.5,-11.502 -71.148,-10.909C-70.796,-10.317 -70.571,-9.558 -70.475,-8.629C-70.471,-8.49 -70.466,-7.883 -70.46,-6.952C-70.945,-7.669 -71.483,-8.35 -72.079,-8.99C-73.583,-10.605 -75.415,-11.894 -77.575,-12.853C-79.735,-13.814 -82.176,-14.294 -84.896,-14.294C-87.392,-14.294 -89.768,-13.886 -92.024,-13.07C-94.28,-12.254 -96.249,-11.085 -97.929,-9.565C-98.927,-8.662 -99.802,-7.637 -100.557,-6.496C-100.327,-6.987 -100.111,-7.428 -99.909,-7.815C-99.523,-8.559 -99.188,-9.177 -98.904,-9.668C-98.623,-10.158 -98.373,-10.53 -98.156,-10.785C-97.941,-11.04 -97.774,-11.226 -97.657,-11.343C-97.538,-11.5 -97.105,-11.814 -96.358,-12.285C-95.611,-12.755 -94.722,-13.049 -93.749,-13.167C-93.57,-13.167 -93.425,-13.311 -93.425,-13.49C-93.425,-13.669 -93.57,-13.814 -93.749,-13.814L-106.756,-13.814C-106.935,-13.814 -107.079,-13.669 -107.079,-13.49C-107.079,-13.311 -106.935,-13.167 -106.756,-13.167C-106.268,-13.155 -105.755,-13.098 -105.148,-12.961C-104.54,-12.824 -103.963,-12.628 -103.416,-12.373C-102.869,-12.117 -102.419,-11.794 -102.064,-11.402C-101.71,-11.01 -101.559,-10.52 -101.572,-9.932C-101.602,-8.576 -101.807,-7.849 -102.236,-6.811C-103.897,-2.794 -109.62,10.446 -110.976,13.602C-111.03,13.708 -111.138,13.783 -111.266,13.783C-111.39,13.783 -111.494,13.713 -111.55,13.612C-115.129,5.731 -120.805,-6.789 -121.179,-7.726C-121.705,-9.039 -121.983,-9.874 -122.014,-10.226C-122.066,-10.814 -121.914,-11.304 -121.558,-11.697C-121.202,-12.088 -120.782,-12.392 -120.299,-12.608C-119.815,-12.824 -119.335,-12.971 -118.858,-13.049C-118.382,-13.127 -118.139,-13.156 -117.921,-13.167C-117.742,-13.167 -117.597,-13.311 -117.597,-13.49C-117.597,-13.669 -117.742,-13.814 -117.921,-13.814L-134.612,-13.814C-134.791,-13.814 -134.936,-13.669 -134.936,-13.49C-134.936,-13.311 -134.791,-13.167 -134.612,-13.167C-133.752,-13.127 -132.976,-12.98 -132.395,-12.726C-131.814,-12.47 -131.313,-12.167 -130.891,-11.814C-130.469,-11.461 -130.131,-11.109 -129.876,-10.756C-129.622,-10.403 -129.428,-10.108 -129.296,-9.874C-129.031,-9.403 -128.778,-8.952 -128.535,-8.521C-128.292,-8.088 -128.048,-7.639 -127.801,-7.168C-127.555,-6.697 -127.296,-6.187 -127.024,-5.639C-126.752,-5.089 -126.454,-4.442 -126.127,-3.698C-125.311,-1.92 -119.046,11.655 -115.018,20.361L-115.014,20.364C-114.905,20.591 -114.675,20.749 -114.406,20.749L-112.56,20.749C-112.287,20.749 -112.053,20.585 -111.946,20.352L-111.945,20.35C-111.944,20.348 -111.942,20.345 -111.941,20.342C-111.94,20.338 -111.938,20.334 -111.936,20.33C-110.838,17.7 -104.886,3.447 -103.98,1.331C-103.606,0.458 -103.244,-0.383 -102.894,-1.193C-103.245,0.246 -103.425,1.782 -103.425,3.419C-103.425,6.011 -102.953,8.388 -102.009,10.548C-101.065,12.708 -99.777,14.565 -98.145,16.116C-96.513,17.669 -94.609,18.869 -92.432,19.717C-90.256,20.565 -87.952,20.989 -85.52,20.989C-83.056,20.989 -80.728,20.557 -78.535,19.693C-76.344,18.829 -74.423,17.597 -72.775,15.996C-71.911,15.157 -71.143,14.237 -70.468,13.239C-70.48,14.276 -70.495,14.975 -70.515,15.18C-70.644,16.493 -70.931,17.485 -71.379,18.157C-71.828,18.861 -72.435,19.365 -73.203,19.669C-73.971,19.973 -74.731,20.082 -75.508,20.102C-75.686,20.102 -75.831,20.246 -75.831,20.425C-75.831,20.604 -75.686,20.749 -75.508,20.749L-63.294,20.749C-63.115,20.749 -62.97,20.604 -62.97,20.425C-62.97,20.246 -63.115,20.102 -63.294,20.102C-64.615,20.034 -65.638,19.845 -66.39,19.476C-67.142,19.109 -67.694,18.557 -68.046,17.821C-68.367,17.181 -68.567,16.205 -68.646,14.892C-68.727,13.581 -68.766,12.108 -68.766,10.476L-68.766,10.097C-67.873,7.985 -67.423,5.697 -67.423,3.227C-67.423,0.924 -67.823,-1.285 -68.623,-3.397C-68.668,-3.517 -68.719,-3.633 -68.766,-3.751L-68.766,-8.89C-68.766,-9.069 -68.621,-9.215 -68.441,-9.215C-68.341,-9.215 -68.278,-9.202 -68.193,-9.099C-64.394,-4.551 -47.472,16.029 -43.67,20.513L-43.661,20.517C-43.538,20.658 -43.359,20.748 -43.158,20.749L-41.701,20.749C-41.328,20.749 -41.026,20.446 -41.026,20.074C-41.026,20.074 -41.059,-8.155 -41.027,-9.582C-41.027,-11.543 -39.438,-13.132 -37.477,-13.132C-35.516,-13.132 -33.927,-11.543 -33.927,-9.582L-33.927,16.332C-33.927,17.612 -34.219,18.102 -34.479,18.396C-34.959,18.941 -35.543,19.357 -36.231,19.645C-36.919,19.933 -37.659,20.045 -38.463,20.102C-38.641,20.102 -38.786,20.246 -38.786,20.425C-38.786,20.604 -38.641,20.749 -38.463,20.749L-24.062,20.749C-23.883,20.749 -23.738,20.604 -23.738,20.425C-23.738,20.246 -23.883,20.102 -24.062,20.102C-24.759,20.096 -25.486,20.029 -26.318,19.74C-27.151,19.452 -27.758,19.037 -28.142,18.493C-28.399,18.141 -28.543,17.532 -28.574,16.668C-28.586,16.358 -28.582,13.039 -28.571,8.875C-28.479,9.156 -28.382,9.434 -28.275,9.708C-27.523,11.628 -26.499,13.332 -25.202,14.821C-23.906,16.308 -22.394,17.556 -20.666,18.564C-18.938,19.572 -17.098,20.285 -15.146,20.701C-15.146,20.701 -11.618,21.408 -8.329,20.653C-7.945,20.583 -7.567,20.499 -7.192,20.409C-6.664,21.22 -4.986,23.267 -1.581,23.074C2.681,22.831 4.888,19.262 4.888,19.262C4.921,19.212 4.945,19.155 4.945,19.09C4.945,18.91 4.799,18.764 4.619,18.764C4.516,18.764 4.429,18.815 4.369,18.89C4.369,18.89 4.477,18.779 4.365,18.887C4.208,19.037 3.392,20.121 1.131,20.435C-0.809,20.704 -1.951,19.513 -2.459,18.583C-2.448,18.576 -2.436,18.571 -2.425,18.564C-0.6,17.556 0.975,16.293 2.304,14.772C3.631,13.253 4.68,11.516 5.448,9.564C5.931,8.338 6.261,7.048 6.44,5.695C6.428,6.886 6.422,7.873 6.422,8.652C6.422,9.036 6.447,9.62 6.494,10.404C6.542,11.189 6.702,12.052 6.975,12.996C7.246,13.94 7.662,14.901 8.222,15.877C8.782,16.853 9.574,17.749 10.599,18.564C11.622,19.381 12.927,20.029 14.511,20.508C16.095,20.989 18.039,21.229 20.343,21.229C22.679,21.229 25.607,20.981 27.208,20.485C28.808,19.989 30.119,19.317 31.144,18.469C32.168,17.621 32.96,16.677 33.521,15.636C34.08,14.597 34.488,13.556 34.745,12.516C35,11.477 35.152,10.492 35.201,9.564C35.249,8.636 35.206,-9.994 35.206,-10.669C35.206,-11.466 35.852,-12.113 36.65,-12.113C37.447,-12.113 38.094,-11.466 38.094,-10.669C38.115,-10.113 38.161,3.324 38.161,3.324L38.161,6.108C38.161,7.067 38.048,14.292 38.017,14.821C37.984,15.348 37.928,15.852 37.849,16.332C37.769,16.813 37.681,17.237 37.585,17.605C37.489,17.973 37.361,18.252 37.201,18.445C36.752,18.957 36.185,19.357 35.497,19.645C34.808,19.933 34.064,20.102 33.265,20.102C33.086,20.102 32.941,20.246 32.941,20.425C32.941,20.604 33.086,20.749 33.265,20.749L61.109,20.749L61.111,20.748C61.846,20.748 62.457,20.222 62.593,19.526L64.538,11.198L64.534,11.197C64.544,11.166 64.553,11.134 64.553,11.1"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,305.626,90.364)">
          <path
            d="M0,-0.007C0,0.253 -0.093,0.478 -0.28,0.666C-0.466,0.855 -0.692,0.949 -0.956,0.949C-1.217,0.949 -1.44,0.855 -1.626,0.666C-1.813,0.478 -1.906,0.253 -1.906,-0.007C-1.906,-0.179 -1.863,-0.337 -1.777,-0.484C-1.692,-0.63 -1.576,-0.745 -1.429,-0.83C-1.283,-0.914 -1.125,-0.956 -0.956,-0.956C-0.785,-0.956 -0.627,-0.914 -0.48,-0.83C-0.333,-0.745 -0.217,-0.629 -0.13,-0.482C-0.043,-0.334 0,-0.176 0,-0.007"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,315.317,88.507)">
          <path
            d="M0,1.505L-0.658,-0.158L-1.283,1.505L0,1.505ZM2.096,3.182L-0.151,3.182L-0.151,2.859C0.039,2.859 0.177,2.845 0.264,2.819C0.351,2.791 0.394,2.728 0.394,2.627C0.394,2.556 0.38,2.485 0.352,2.412L0.127,1.85L-1.421,1.85L-1.537,2.159C-1.602,2.333 -1.635,2.458 -1.635,2.535C-1.635,2.676 -1.581,2.765 -1.472,2.802C-1.363,2.84 -1.235,2.859 -1.09,2.859L-1.09,3.182L-2.732,3.182L-2.732,2.859C-2.601,2.859 -2.49,2.834 -2.398,2.785C-2.307,2.736 -2.219,2.643 -2.136,2.506C-2.053,2.369 -1.963,2.174 -1.867,1.923L-0.492,-1.677L-0.158,-1.677L1.294,2.036C1.399,2.299 1.477,2.476 1.526,2.569C1.575,2.661 1.643,2.733 1.73,2.784C1.817,2.833 1.939,2.859 2.096,2.859L2.096,3.182Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,328.552,88.471)">
          <path
            d="M0,1.632L-0.039,3.2L-4.286,3.2L-4.286,2.877C-3.993,2.877 -3.805,2.835 -3.72,2.75C-3.636,2.666 -3.594,2.521 -3.594,2.314L-3.594,-0.682C-3.594,-0.817 -3.607,-0.924 -3.634,-1C-3.661,-1.076 -3.724,-1.136 -3.824,-1.179C-3.923,-1.222 -4.078,-1.244 -4.286,-1.244L-4.286,-1.568L-0.331,-1.568L-0.267,-0.33L-0.591,-0.33C-0.664,-0.604 -0.747,-0.801 -0.842,-0.919C-0.937,-1.038 -1.044,-1.11 -1.162,-1.137C-1.281,-1.164 -1.458,-1.178 -1.695,-1.178L-2.588,-1.178L-2.588,0.507L-2.103,0.507C-1.936,0.507 -1.812,0.492 -1.73,0.463C-1.648,0.434 -1.59,0.378 -1.558,0.296C-1.525,0.214 -1.503,0.085 -1.491,-0.091L-1.153,-0.091L-1.153,1.495L-1.477,1.495C-1.486,1.319 -1.51,1.19 -1.547,1.107C-1.585,1.023 -1.644,0.967 -1.725,0.939C-1.806,0.911 -1.929,0.897 -2.096,0.897L-2.588,0.897L-2.588,2.019C-2.588,2.207 -2.583,2.344 -2.574,2.43C-2.564,2.517 -2.539,2.589 -2.498,2.647C-2.457,2.704 -2.39,2.746 -2.298,2.771C-2.205,2.797 -2.074,2.81 -1.902,2.81L-1.519,2.81C-1.357,2.81 -1.203,2.79 -1.057,2.749C-0.91,2.707 -0.767,2.602 -0.626,2.432C-0.485,2.262 -0.387,1.996 -0.331,1.632L0,1.632Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,336.71,88.078)">
          <path
            d="M0,2.029C0,2.177 -0.032,2.334 -0.095,2.499C-0.158,2.664 -0.254,2.822 -0.382,2.973C-0.509,3.125 -0.671,3.248 -0.865,3.343C-1.059,3.438 -1.284,3.485 -1.54,3.485C-1.793,3.485 -2.045,3.43 -2.294,3.319C-2.544,3.21 -2.756,3.045 -2.929,2.827C-3.004,3.001 -3.052,3.161 -3.073,3.309L-3.397,3.309L-3.397,1.677L-3.073,1.677C-3.015,1.912 -2.934,2.132 -2.831,2.338C-2.728,2.545 -2.582,2.722 -2.393,2.871C-2.204,3.02 -1.973,3.094 -1.698,3.094C-1.459,3.094 -1.268,3.029 -1.123,2.897C-0.979,2.767 -0.907,2.601 -0.907,2.402C-0.907,2.289 -0.929,2.191 -0.974,2.106C-1.019,2.022 -1.083,1.947 -1.167,1.88C-1.252,1.813 -1.367,1.741 -1.514,1.665C-1.66,1.589 -1.827,1.509 -2.015,1.424C-2.303,1.288 -2.54,1.151 -2.725,1.013C-2.91,0.875 -3.05,0.741 -3.145,0.611C-3.24,0.48 -3.306,0.357 -3.342,0.239C-3.378,0.122 -3.397,0.004 -3.397,-0.116C-3.397,-0.329 -3.339,-0.539 -3.224,-0.747C-3.109,-0.954 -2.941,-1.124 -2.72,-1.257C-2.498,-1.39 -2.242,-1.456 -1.952,-1.456C-1.729,-1.456 -1.517,-1.406 -1.315,-1.306C-1.114,-1.207 -0.939,-1.07 -0.791,-0.897C-0.749,-0.995 -0.71,-1.133 -0.675,-1.311L-0.345,-1.311L-0.345,0.018L-0.675,0.018C-0.91,-0.707 -1.318,-1.069 -1.899,-1.069C-2.11,-1.069 -2.279,-1.013 -2.407,-0.901C-2.535,-0.79 -2.599,-0.647 -2.599,-0.471C-2.599,-0.333 -2.559,-0.212 -2.479,-0.11C-2.399,-0.008 -2.294,0.079 -2.164,0.151C-2.034,0.224 -1.824,0.328 -1.533,0.464C-1.181,0.631 -0.906,0.775 -0.709,0.897C-0.511,1.019 -0.343,1.172 -0.206,1.357C-0.069,1.543 0,1.767 0,2.029"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,347.146,92.163)">
          <path
            d="M0,-2.06L-0.334,-2.06C-0.365,-2.355 -0.43,-2.573 -0.529,-2.714C-0.629,-2.855 -0.736,-2.941 -0.851,-2.974C-0.966,-3.007 -1.098,-3.024 -1.248,-3.024L-1.853,-3.024L-1.853,0.468C-1.853,0.607 -1.839,0.714 -1.811,0.79C-1.783,0.866 -1.717,0.925 -1.614,0.967C-1.511,1.01 -1.36,1.031 -1.16,1.031L-1.16,1.354L-3.551,1.354L-3.551,1.031C-3.258,1.031 -3.07,0.989 -2.985,0.904C-2.901,0.82 -2.859,0.675 -2.859,0.468L-2.859,-3.024L-3.365,-3.024C-3.564,-3.024 -3.73,-3.007 -3.861,-2.976C-3.992,-2.944 -4.108,-2.858 -4.207,-2.715C-4.307,-2.574 -4.364,-2.355 -4.378,-2.06L-4.712,-2.06L-4.712,-3.414L0,-3.414L0,-2.06Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,359.024,85.3356)">
          <path
            d="M0,4.768L-2.345,4.768L-2.345,4.445C-2.153,4.445 -2.008,4.423 -1.909,4.381C-1.811,4.339 -1.748,4.279 -1.719,4.198C-1.691,4.119 -1.677,4.013 -1.677,3.882L-1.677,2.451L-3.889,2.451L-3.889,3.882C-3.889,4.079 -3.848,4.222 -3.766,4.311C-3.684,4.4 -3.496,4.445 -3.203,4.445L-3.203,4.768L-5.566,4.768L-5.566,4.445C-5.376,4.445 -5.231,4.423 -5.132,4.381C-5.032,4.339 -4.968,4.279 -4.939,4.2C-4.909,4.122 -4.895,4.015 -4.895,3.882L-4.895,0.886C-4.895,0.752 -4.909,0.648 -4.937,0.572C-4.965,0.495 -5.027,0.435 -5.123,0.39C-5.219,0.346 -5.367,0.323 -5.566,0.323L-5.566,0L-3.203,0L-3.203,0.323C-3.494,0.323 -3.681,0.367 -3.764,0.454C-3.847,0.541 -3.889,0.685 -3.889,0.886L-3.889,2.06L-1.677,2.06L-1.677,0.886C-1.677,0.752 -1.69,0.648 -1.716,0.572C-1.742,0.495 -1.803,0.435 -1.899,0.39C-1.995,0.346 -2.144,0.323 -2.345,0.323L-2.345,0L0,0L0,0.323C-0.199,0.323 -0.347,0.346 -0.443,0.39C-0.539,0.435 -0.601,0.495 -0.628,0.572C-0.655,0.648 -0.668,0.752 -0.668,0.886L-0.668,3.882C-0.668,4.011 -0.656,4.113 -0.631,4.19C-0.607,4.266 -0.545,4.328 -0.447,4.374C-0.348,4.421 -0.199,4.445 0,4.445L0,4.768Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,368.307,88.471)">
          <path
            d="M0,1.632L-0.039,3.2L-4.286,3.2L-4.286,2.877C-3.993,2.877 -3.805,2.835 -3.72,2.75C-3.636,2.666 -3.594,2.521 -3.594,2.314L-3.594,-0.682C-3.594,-0.817 -3.607,-0.924 -3.634,-1C-3.661,-1.076 -3.724,-1.136 -3.824,-1.179C-3.923,-1.222 -4.078,-1.244 -4.286,-1.244L-4.286,-1.568L-0.331,-1.568L-0.267,-0.33L-0.591,-0.33C-0.664,-0.604 -0.747,-0.801 -0.842,-0.919C-0.937,-1.038 -1.044,-1.11 -1.162,-1.137C-1.281,-1.164 -1.458,-1.178 -1.695,-1.178L-2.588,-1.178L-2.588,0.507L-2.103,0.507C-1.936,0.507 -1.812,0.492 -1.73,0.463C-1.648,0.434 -1.59,0.378 -1.558,0.296C-1.525,0.214 -1.503,0.085 -1.491,-0.091L-1.153,-0.091L-1.153,1.495L-1.477,1.495C-1.486,1.319 -1.51,1.19 -1.547,1.107C-1.585,1.023 -1.644,0.967 -1.725,0.939C-1.806,0.911 -1.929,0.897 -2.096,0.897L-2.588,0.897L-2.588,2.019C-2.588,2.207 -2.583,2.344 -2.574,2.43C-2.564,2.517 -2.539,2.589 -2.498,2.647C-2.457,2.704 -2.39,2.746 -2.298,2.771C-2.205,2.797 -2.074,2.81 -1.902,2.81L-1.519,2.81C-1.357,2.81 -1.203,2.79 -1.057,2.749C-0.91,2.707 -0.767,2.602 -0.626,2.432C-0.485,2.262 -0.387,1.996 -0.331,1.632L0,1.632Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,378.645,92.163)">
          <path
            d="M0,-2.06L-0.334,-2.06C-0.365,-2.355 -0.43,-2.573 -0.529,-2.714C-0.629,-2.855 -0.736,-2.941 -0.851,-2.974C-0.966,-3.007 -1.098,-3.024 -1.248,-3.024L-1.853,-3.024L-1.853,0.468C-1.853,0.607 -1.839,0.714 -1.811,0.79C-1.783,0.866 -1.717,0.925 -1.614,0.967C-1.511,1.01 -1.36,1.031 -1.16,1.031L-1.16,1.354L-3.551,1.354L-3.551,1.031C-3.259,1.031 -3.07,0.989 -2.985,0.904C-2.901,0.82 -2.859,0.675 -2.859,0.468L-2.859,-3.024L-3.365,-3.024C-3.564,-3.024 -3.73,-3.007 -3.861,-2.976C-3.992,-2.944 -4.108,-2.858 -4.207,-2.715C-4.307,-2.574 -4.364,-2.355 -4.378,-2.06L-4.712,-2.06L-4.712,-3.414L0,-3.414L0,-2.06Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,384.144,85.3356)">
          <path
            d="M0,4.768L-2.419,4.768L-2.419,4.445C-2.218,4.445 -2.065,4.426 -1.962,4.387C-1.859,4.348 -1.792,4.29 -1.76,4.212C-1.728,4.135 -1.712,4.025 -1.712,3.882L-1.712,0.886C-1.712,0.68 -1.755,0.534 -1.841,0.45C-1.926,0.366 -2.119,0.323 -2.419,0.323L-2.419,0L0,0L0,0.323C-0.201,0.323 -0.354,0.344 -0.457,0.383C-0.56,0.423 -0.628,0.481 -0.659,0.558C-0.691,0.634 -0.707,0.743 -0.707,0.886L-0.707,3.882C-0.707,4.018 -0.692,4.125 -0.661,4.202C-0.63,4.279 -0.565,4.339 -0.466,4.381C-0.366,4.423 -0.211,4.445 0,4.445L0,4.768Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
        <g transform="matrix(2,0,0,2,394.179,85.4412)">
          <path
            d="M0,4.666L-0.331,4.666C-0.38,4.465 -0.461,4.284 -0.573,4.124C-0.751,4.31 -0.955,4.469 -1.185,4.603C-1.415,4.736 -1.725,4.803 -2.117,4.803C-2.546,4.803 -2.944,4.699 -3.311,4.49C-3.677,4.282 -3.97,3.99 -4.188,3.617C-4.406,3.243 -4.515,2.821 -4.515,2.352C-4.515,2.02 -4.456,1.702 -4.337,1.399C-4.219,1.097 -4.05,0.831 -3.831,0.601C-3.612,0.372 -3.35,0.191 -3.047,0.06C-2.743,-0.071 -2.411,-0.137 -2.05,-0.137C-1.455,-0.137 -0.962,0.058 -0.573,0.446C-0.521,0.346 -0.471,0.2 -0.422,0.007L-0.105,0.007L-0.049,1.762L-0.387,1.762C-0.448,1.464 -0.558,1.199 -0.717,0.967C-0.877,0.735 -1.066,0.558 -1.285,0.434C-1.504,0.311 -1.734,0.25 -1.973,0.25C-2.24,0.25 -2.48,0.323 -2.693,0.47C-2.907,0.616 -3.074,0.84 -3.195,1.139C-3.315,1.439 -3.376,1.814 -3.376,2.261C-3.376,2.697 -3.325,3.06 -3.224,3.349C-3.123,3.639 -2.999,3.857 -2.85,4.005C-2.701,4.153 -2.552,4.253 -2.402,4.306C-2.251,4.359 -2.111,4.385 -1.98,4.385C-1.691,4.385 -1.432,4.307 -1.201,4.153C-0.97,3.998 -0.781,3.803 -0.633,3.567C-0.485,3.332 -0.387,3.098 -0.338,2.866L0,2.866L0,4.666Z"
            style="fill:currentColor;fill-rule:nonzero;"
          />
        </g>
      </svg>
    </div>
    """
  end

  @doc """
  Renders a modal.

  ## Examples

      <.modal id="confirm-modal">
        Are you sure?
        <:confirm>OK</:confirm>
        <:cancel>Cancel</:cancel>
      </.modal>

  JS commands may be passed to the `:on_cancel` and `on_confirm` attributes
  for the caller to react to each button press, for example:

      <.modal id="confirm" on_confirm={JS.push("delete")} on_cancel={JS.navigate(~p"/posts")}>
        Are you sure you?
        <:confirm>OK</:confirm>
        <:cancel>Cancel</:cancel>
      </.modal>
  """
  attr :id, :string, required: true
  attr :show, :boolean, default: false
  attr :on_cancel, JS, default: %JS{}
  attr :on_confirm, JS, default: %JS{}

  slot :inner_block, required: true
  slot :title
  slot :subtitle
  slot :confirm
  slot :cancel

  def modal(assigns) do
    ~H"""
    <div id={@id} phx-mounted={@show && show_modal(@id)} class="relative z-50 hidden">
      <div id={"#{@id}-bg"} class="fixed inset-0 bg-zinc-50/90 transition-opacity" aria-hidden="true" />
      <div
        class="fixed inset-0 overflow-y-auto"
        aria-labelledby={"#{@id}-title"}
        aria-describedby={"#{@id}-description"}
        role="dialog"
        aria-modal="true"
        tabindex="0"
      >
        <div class="flex min-h-full items-center justify-center">
          <div class="w-full max-w-3xl p-4 sm:p-6 lg:py-8">
            <.focus_wrap
              id={"#{@id}-container"}
              phx-mounted={@show && show_modal(@id)}
              phx-window-keydown={hide_modal(@on_cancel, @id)}
              phx-key="escape"
              phx-click-away={hide_modal(@on_cancel, @id)}
              class="hidden relative rounded-2xl bg-white p-14 shadow-lg shadow-zinc-700/10 ring-1 ring-zinc-700/10 transition"
            >
              <div class="absolute top-6 right-5">
                <button
                  phx-click={hide_modal(@on_cancel, @id)}
                  type="button"
                  class="-m-3 flex-none p-3 opacity-20 hover:opacity-40"
                  aria-label={gettext("close")}
                >
                  <Heroicons.x_mark solid class="h-5 w-5 stroke-current" />
                </button>
              </div>
              <div id={"#{@id}-content"}>
                <header :if={@title != []}>
                  <h1 id={"#{@id}-title"} class="text-lg font-semibold leading-8 text-zinc-800">
                    <%= render_slot(@title) %>
                  </h1>
                  <p :if={@subtitle != []} class="mt-2 text-sm leading-6 text-zinc-600">
                    <%= render_slot(@subtitle) %>
                  </p>
                </header>
                <%= render_slot(@inner_block) %>
                <div :if={@confirm != [] or @cancel != []} class="ml-6 mb-4 flex items-center gap-5">
                  <.button
                    :for={confirm <- @confirm}
                    id={"#{@id}-confirm"}
                    phx-click={@on_confirm}
                    phx-disable-with
                    class="py-2 px-3"
                  >
                    <%= render_slot(confirm) %>
                  </.button>
                  <.link
                    :for={cancel <- @cancel}
                    phx-click={hide_modal(@on_cancel, @id)}
                    class="text-sm font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
                  >
                    <%= render_slot(cancel) %>
                  </.link>
                </div>
              </div>
            </.focus_wrap>
          </div>
        </div>
      </div>
    </div>
    """
  end

  @doc """
  Renders flash notices.

  ## Examples

      <.flash kind={:info} flash={@flash} />
      <.flash kind={:info} phx-mounted={show("#flash")}>Welcome Back!</.flash>
  """
  attr :id, :string, default: "flash", doc: "the optional id of flash container"
  attr :flash, :map, default: %{}, doc: "the map of flash messages to display"
  attr :title, :string, default: nil
  attr :kind, :atom, values: [:info, :error], doc: "used for styling and flash lookup"
  attr :autoshow, :boolean, default: true, doc: "whether to auto show the flash on mount"
  attr :close, :boolean, default: true, doc: "whether the flash can be closed"
  attr :rest, :global, doc: "the arbitrary HTML attributes to add to the flash container"

  slot :inner_block, doc: "the optional inner block that renders the flash message"

  def flash(assigns) do
    ~H"""
    <div
      :if={msg = render_slot(@inner_block) || Phoenix.Flash.get(@flash, @kind)}
      id={@id}
      phx-mounted={@autoshow && show("##{@id}")}
      phx-click={JS.push("lv:clear-flash", value: %{key: @kind}) |> hide("#flash")}
      role="alert"
      class={[
        "fixed hidden top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 shadow-md shadow-zinc-900/5 ring-1",
        @kind == :info && "bg-emerald-50 text-emerald-800 ring-emerald-500 fill-cyan-900",
        @kind == :error && "bg-rose-50 p-3 text-rose-900 shadow-md ring-rose-500 fill-rose-900"
      ]}
      {@rest}
    >
      <p :if={@title} class="flex items-center gap-1.5 text-[0.8125rem] font-semibold leading-6">
        <Heroicons.information_circle :if={@kind == :info} mini class="h-4 w-4" />
        <Heroicons.exclamation_circle :if={@kind == :error} mini class="h-4 w-4" />
        <%= @title %>
      </p>
      <p class="mt-2 text-[0.8125rem] leading-5"><%= msg %></p>
      <button
        :if={@close}
        type="button"
        class="group absolute top-2 right-1 p-2"
        aria-label={gettext("close")}
      >
        <Heroicons.x_mark solid class="h-5 w-5 stroke-current opacity-40 group-hover:opacity-70" />
      </button>
    </div>
    """
  end

  @doc """
  Renders a simple form.

  ## Examples

      <.simple_form :let={f} for={:user} phx-change="validate" phx-submit="save">
        <.input field={{f, :email}} label="Email"/>
        <.input field={{f, :username}} label="Username" />
        <:actions>
          <.button>Save</.button>
        </:actions>
      </.simple_form>
  """
  attr :for, :any, default: nil, doc: "the datastructure for the form"
  attr :as, :any, default: nil, doc: "the server side parameter to collect all input under"

  attr :rest, :global,
    include: ~w(autocomplete name rel action enctype method novalidate target),
    doc: "the arbitrary HTML attributes to apply to the form tag"

  slot :inner_block, required: true
  slot :actions, doc: "the slot for form actions, such as a submit button"

  def simple_form(assigns) do
    ~H"""
    <.form :let={f} for={@for} as={@as} {@rest}>
      <div class="space-y-8 bg-white mt-10">
        <%= render_slot(@inner_block, f) %>
        <div :for={action <- @actions} class="mt-2 flex items-center justify-between gap-6">
          <%= render_slot(action, f) %>
        </div>
      </div>
    </.form>
    """
  end

  @doc """
  Renders a button.

  ## Examples

      <.button>Send!</.button>
      <.button phx-click="go" class="ml-2">Send!</.button>
  """
  attr :type, :string, default: nil
  attr :class, :string, default: nil
  attr :rest, :global, include: ~w(disabled form name value)

  slot :inner_block, required: true

  def button(assigns) do
    ~H"""
    <button
      type={@type}
      class={[
        "phx-submit-loading:opacity-75 rounded-lg bg-zinc-900 hover:bg-zinc-700 py-2 px-3",
        "text-sm font-semibold leading-6 text-white active:text-white/80",
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end

  @doc """
  Renders an input with label and error messages.

  A `%Phoenix.HTML.Form{}` and field name may be passed to the input
  to build input names and error messages, or all the attributes and
  errors may be passed explicitly.

  ## Examples

      <.input field={{f, :email}} type="email" />
      <.input name="my-input" errors={["oh no!"]} />
  """
  attr :id, :any
  attr :name, :any
  attr :label, :string, default: nil

  attr :type, :string,
    default: "text",
    values: ~w(checkbox color date datetime-local email file hidden month number password
               range radio search select tel text textarea time url week)

  attr :value, :any
  attr :field, :any, doc: "a %Phoenix.HTML.Form{}/field name tuple, for example: {f, :email}"
  attr :errors, :list
  attr :checked, :boolean, doc: "the checked flag for checkbox inputs"
  attr :prompt, :string, default: nil, doc: "the prompt for select inputs"
  attr :options, :list, doc: "the options to pass to Phoenix.HTML.Form.options_for_select/2"
  attr :multiple, :boolean, default: false, doc: "the multiple flag for select inputs"
  attr :rest, :global, include: ~w(autocomplete disabled form max maxlength min minlength
                                   pattern placeholder readonly required size step)
  slot :inner_block

  def input(%{field: {f, field}} = assigns) do
    assigns
    |> assign(field: nil)
    |> assign_new(:name, fn ->
      name = Phoenix.HTML.Form.input_name(f, field)
      if assigns.multiple, do: name <> "[]", else: name
    end)
    |> assign_new(:id, fn -> Phoenix.HTML.Form.input_id(f, field) end)
    |> assign_new(:value, fn -> Phoenix.HTML.Form.input_value(f, field) end)
    |> assign_new(:errors, fn -> translate_errors(f.errors || [], field) end)
    |> input()
  end

  def input(%{type: "checkbox"} = assigns) do
    assigns = assign_new(assigns, :checked, fn -> input_equals?(assigns.value, "true") end)

    ~H"""
    <label phx-feedback-for={@name} class="flex items-center gap-4 text-sm leading-6 text-zinc-600">
      <input type="hidden" name={@name} value="false" />
      <input
        type="checkbox"
        id={@id || @name}
        name={@name}
        value="true"
        checked={@checked}
        class="rounded border-zinc-300 text-zinc-900 focus:ring-zinc-900"
        {@rest}
      />
      <%= @label %>
    </label>
    """
  end

  def input(%{type: "select"} = assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <select
        id={@id}
        name={@name}
        class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-zinc-500 focus:border-zinc-500 sm:text-sm"
        multiple={@multiple}
        {@rest}
      >
        <option :if={@prompt}><%= @prompt %></option>
        <%= Phoenix.HTML.Form.options_for_select(@options, @value) %>
      </select>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  def input(%{type: "textarea"} = assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <textarea
        id={@id || @name}
        name={@name}
        class={[
          input_border(@errors),
          "mt-2 block min-h-[6rem] w-full rounded-lg border-zinc-300 py-[7px] px-[11px]",
          "text-zinc-900 focus:border-zinc-400 focus:outline-none focus:ring-4 focus:ring-zinc-800/5 sm:text-sm sm:leading-6",
          "phx-no-feedback:border-zinc-300 phx-no-feedback:focus:border-zinc-400 phx-no-feedback:focus:ring-zinc-800/5"
        ]}
        {@rest}
      >

    <%= @value %></textarea>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  def input(assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <input
        type={@type}
        name={@name}
        id={@id || @name}
        value={@value}
        class={[
          input_border(@errors),
          "mt-2 block w-full rounded-lg border-zinc-300 py-[7px] px-[11px]",
          "text-zinc-900 focus:outline-none focus:ring-4 sm:text-sm sm:leading-6",
          "phx-no-feedback:border-zinc-300 phx-no-feedback:focus:border-zinc-400 phx-no-feedback:focus:ring-zinc-800/5"
        ]}
        {@rest}
      />
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  defp input_border([] = _errors),
    do: "border-zinc-300 focus:border-zinc-400 focus:ring-zinc-800/5"

  defp input_border([_ | _] = _errors),
    do: "border-rose-400 focus:border-rose-400 focus:ring-rose-400/10"

  @doc """
  Renders a label.
  """
  attr :for, :string, default: nil
  slot :inner_block, required: true

  def label(assigns) do
    ~H"""
    <label for={@for} class="block text-sm font-semibold leading-6 text-zinc-800">
      <%= render_slot(@inner_block) %>
    </label>
    """
  end

  @doc """
  Generates a generic error message.
  """
  slot :inner_block, required: true

  def error(assigns) do
    ~H"""
    <p class="phx-no-feedback:hidden mt-3 flex gap-3 text-sm leading-6 text-rose-600">
      <Heroicons.exclamation_circle mini class="mt-0.5 h-5 w-5 flex-none fill-rose-500" />
      <%= render_slot(@inner_block) %>
    </p>
    """
  end

  @doc """
  Renders a header with title.
  """
  attr :class, :string, default: nil

  slot :inner_block, required: true
  slot :subtitle
  slot :actions

  def header(assigns) do
    ~H"""
    <header class={[@actions != [] && "flex items-center justify-between gap-6", @class]}>
      <div>
        <h1 class="text-lg font-semibold leading-8 text-zinc-800">
          <%= render_slot(@inner_block) %>
        </h1>
        <p :if={@subtitle != []} class="mt-2 text-sm leading-6 text-zinc-600">
          <%= render_slot(@subtitle) %>
        </p>
      </div>
      <div class="flex-none"><%= render_slot(@actions) %></div>
    </header>
    """
  end

  @doc ~S"""
  Renders a table with generic styling.

  ## Examples

      <.table id="users" rows={@users}>
        <:col :let={user} label="id"><%= user.id %></:col>
        <:col :let={user} label="username"><%= user.username %></:col>
      </.table>
  """
  attr :id, :string, required: true
  attr :row_click, :any, default: nil
  attr :rows, :list, required: true

  slot :col, required: true do
    attr :label, :string
  end

  slot :action, doc: "the slot for showing user actions in the last table column"

  def table(assigns) do
    ~H"""
    <div id={@id} class="overflow-y-auto px-4 sm:overflow-visible sm:px-0">
      <table class="mt-11 w-[40rem] sm:w-full">
        <thead class="text-left text-[0.8125rem] leading-6 text-zinc-500">
          <tr>
            <th :for={col <- @col} class="p-0 pb-4 pr-6 font-normal"><%= col[:label] %></th>
            <th class="relative p-0 pb-4"><span class="sr-only"><%= gettext("Actions") %></span></th>
          </tr>
        </thead>
        <tbody class="relative divide-y divide-zinc-100 border-t border-zinc-200 text-sm leading-6 text-zinc-700">
          <tr
            :for={row <- @rows}
            id={"#{@id}-#{Phoenix.Param.to_param(row)}"}
            class="relative group hover:bg-zinc-50"
          >
            <td
              :for={{col, i} <- Enum.with_index(@col)}
              phx-click={@row_click && @row_click.(row)}
              class={["p-0", @row_click && "hover:cursor-pointer"]}
            >
              <div :if={i == 0}>
                <span class="absolute h-full w-4 top-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl" />
                <span class="absolute h-full w-4 top-0 -right-4 group-hover:bg-zinc-50 sm:rounded-r-xl" />
              </div>
              <div class="block py-4 pr-6">
                <span class={["relative", i == 0 && "font-semibold text-zinc-900"]}>
                  <%= render_slot(col, row) %>
                </span>
              </div>
            </td>
            <td :if={@action != []} class="p-0 w-14">
              <div class="relative whitespace-nowrap py-4 text-right text-sm font-medium">
                <span
                  :for={action <- @action}
                  class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
                >
                  <%= render_slot(action, row) %>
                </span>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    """
  end

  @doc """
  Renders a data list.

  ## Examples

      <.list>
        <:item title="Title"><%= @post.title %></:item>
        <:item title="Views"><%= @post.views %></:item>
      </.list>
  """
  slot :item, required: true do
    attr :title, :string, required: true
  end

  def list(assigns) do
    ~H"""
    <div class="mt-14">
      <dl class="-my-4 divide-y divide-zinc-100">
        <div :for={item <- @item} class="flex gap-4 py-4 sm:gap-8">
          <dt class="w-1/4 flex-none text-[0.8125rem] leading-6 text-zinc-500"><%= item.title %></dt>
          <dd class="text-sm leading-6 text-zinc-700"><%= render_slot(item) %></dd>
        </div>
      </dl>
    </div>
    """
  end

  @doc """
  Renders a back navigation link.

  ## Examples

      <.back navigate={~p"/posts"}>Back to posts</.back>
  """
  attr :navigate, :any, required: true
  slot :inner_block, required: true

  def back(assigns) do
    ~H"""
    <div class="mt-16">
      <.link
        navigate={@navigate}
        class="text-sm font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
      >
        <Heroicons.arrow_left solid class="w-3 h-3 stroke-current inline" />
        <%= render_slot(@inner_block) %>
      </.link>
    </div>
    """
  end

  ## JS Commands

  def show(js \\ %JS{}, selector) do
    JS.show(js,
      to: selector,
      transition:
        {"transition-all transform ease-out duration-300",
         "opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95",
         "opacity-100 translate-y-0 sm:scale-100"}
    )
  end

  def hide(js \\ %JS{}, selector) do
    JS.hide(js,
      to: selector,
      time: 200,
      transition:
        {"transition-all transform ease-in duration-200",
         "opacity-100 translate-y-0 sm:scale-100",
         "opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"}
    )
  end

  def show_modal(js \\ %JS{}, id) when is_binary(id) do
    js
    |> JS.show(to: "##{id}")
    |> JS.show(
      to: "##{id}-bg",
      transition: {"transition-all transform ease-out duration-300", "opacity-0", "opacity-100"}
    )
    |> show("##{id}-container")
    |> JS.focus_first(to: "##{id}-content")
  end

  def hide_modal(js \\ %JS{}, id) do
    js
    |> JS.hide(
      to: "##{id}-bg",
      transition: {"transition-all transform ease-in duration-200", "opacity-100", "opacity-0"}
    )
    |> hide("##{id}-container")
    |> JS.hide(to: "##{id}", transition: {"block", "block", "hidden"})
    |> JS.pop_focus()
  end

  @doc """
  Translates an error message using gettext.
  """
  def translate_error({msg, opts}) do
    # When using gettext, we typically pass the strings we want
    # to translate as a static argument:
    #
    #     # Translate "is invalid" in the "errors" domain
    #     dgettext("errors", "is invalid")
    #
    #     # Translate the number of files with plural rules
    #     dngettext("errors", "1 file", "%{count} files", count)
    #
    # Because the error messages we show in our forms and APIs
    # are defined inside Ecto, we need to translate them dynamically.
    # This requires us to call the Gettext module passing our gettext
    # backend as first argument.
    #
    # Note we use the "errors" domain, which means translations
    # should be written to the errors.po file. The :count option is
    # set by Ecto and indicates we should also apply plural rules.
    if count = opts[:count] do
      Gettext.dngettext(VoniqueWeb.Gettext, "errors", msg, msg, count, opts)
    else
      Gettext.dgettext(VoniqueWeb.Gettext, "errors", msg, opts)
    end
  end

  @doc """
  Translates the errors for a field from a keyword list of errors.
  """
  def translate_errors(errors, field) when is_list(errors) do
    for {^field, {msg, opts}} <- errors, do: translate_error({msg, opts})
  end

  defp input_equals?(val1, val2) do
    Phoenix.HTML.html_escape(val1) == Phoenix.HTML.html_escape(val2)
  end
end
