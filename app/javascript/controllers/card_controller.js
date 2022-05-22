import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "link" ]

  connect() {
    console.log("hello from navbar_controller!")
  }

  linkToList() {
    // window.location.href = $.get('<%= Rails.application.routes.url_helpers.list_path(list) %>');
    // console.log(this);
    // const div = event.target
    const url = this.linkTarget.href
    window.location = url
    // console.log(div)
    // console.log(url)
    // let url = $(".div1 a").attr('href');
    // console.log(url)

    // window.location = $(this).find("a").attr("href");
  }

}
