#import "@preview/codly:0.1.0": *
#import "@preview/tablex:0.0.6": tablex, hlinex
#import "@preview/tablem:0.1.0": tablem


// reference: https://github.com/lucifer1004/pkuthss-typst/blob/main/template.typ
#let 字号 = (
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  中四: 13pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  小七: 5pt,
)

#let 字体 = (
  仿宋: ("Times New Roman", "FangSong"),
  宋体: ("Times New Roman", "SimSun"),
  黑体: ("Times New Roman", "SimHei"),
  楷体: ("Times New Roman", "KaiTi"),
  代码: ("New Computer Modern Mono", "Times New Roman", "SimSun"),
  得意黑: ("Smiley Sans",),
)


// 封面设置
#let CoverInfo(
  ClassName: "",
  ReportName: "",
  Name: "",
  StudentID: "",
  School: "",
  Date: (),
  body
  ) = {
  
  set heading(numbering: "1.")
  set page(numbering: "1/1")
  set text(font: 字体.宋体)


  // 封面图片与相关信息
  {
    set align(center)
    set page(numbering: none)

    figure(
      image(
        "assets/Icons/banner_zh_sjtu.png",
        width: 75%,
        )
    )

    v(-2em)

    figure(
      image(
        "assets/Icons/banner_eng_sjtu.png",
        width: 75%,
        )
    )

    v(-1.5em)

    figure(
      image(
        "assets/Icons/badge_sjtu.png",
        width: 30%,
        )
    )

    v(2em)

    par(
      text(
        font: 字体.黑体,
        size: 字号.二号,
        weight: "bold",
        [#ClassName] + "\n",
      )
    )

    par(
      text(
        font: 字体.黑体,
        size: 字号.三号,
        weight: "bold",
        "实验报告 - " + [#ReportName],
      )
    )

    v(4em)

    let info-key(key) = {
      rect(
        width: 100%,
        stroke: none,
        text(
          font: 字体.黑体,
          size: 字号.四号,
          weight: "bold",
          strong(key)
        ),
      )
    }

    let table-stroke = 0.5pt
    let info-value(value) = {
      rect(
        width: 100%,
        stroke: (bottom: table-stroke + black),
        text(
          font: 字体.黑体,
          size: 字号.四号,
          bottom-edge: "descender",
          value,
        ),
      )
    }

    grid(
      columns: (80pt, 160pt),
      row-gutter: 1em,
      column-gutter: 3pt,
      info-key(text("姓") + h(2em) + text("名：")), info-value[#Name],
      info-key(text("学") + h(2em) + text("号：")), info-value[#StudentID],
      info-key(text("学") + h(2em) + text("院：")), info-value[#School],
    )

    v(8em)

    text(
      font: 字体.黑体,
      size: 字号.三号,
      weight: "bold",
      [#Date.at(0)] + "年" + [#Date.at(1)] + "月" + [#Date.at(2)] + "日",
    )

  pagebreak(weak: true)

  }


  // 目录
  {

    set align(center)
    set text(font: 字体.宋体, size: 字号.小四)
    set page(numbering: "I")
    counter(page).update(1)

    for Level in (1, 2, 3) {
      show outline.entry.where(
          level: Level
        ): it => {
          v(18pt, weak: true)
          strong(it)
      }
    }

    outline(
      title: text("目录"), 
      indent: 1em,
    )

    pagebreak(weak: true)
  }


  // 正文
  {
    counter(page).update(1)

    body
  }
}


// language icon
#let icon(codepoint) = {
  box(
    height: 0.8em,
    baseline: 0.05em,
    image(codepoint)
  )
  h(0.1em)
}

// 三线表
#let three-line-table = tablem.with(
  render: (columns: auto, ..args) => {
    tablex(
      columns: columns,
      auto-lines: false,
      align: center + horizon,
      hlinex(y: 0),
      hlinex(y: 1),
      ..args,
      hlinex(),
    )
  }
)
