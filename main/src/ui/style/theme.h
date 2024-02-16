/*     SPDX-License-Identifier: BSD-3-Clause     */

//        Copyright The Authors 2021.
//    Distributed under the 3-Clause BSD License.
//    (See accompanying file LICENSE or copy at
//   https://opensource.org/licenses/BSD-3-Clause)

#pragma once

#include <map>
#include <string>

struct ImFont;

namespace asap::ui {

class Theme {
public:
  static void Init();

  static void SaveStyle();
  static void LoadStyle();

  static void LoadDefaultStyle();

private:
  Theme() = default;

  static void LoadDefaultFonts();
};

} // namespace asap::ui
