from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Zenburn(ColorScheme):
    progress_bar_color = 85

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = 6
                bg = 235
            if context.border:
                fg = 248
            if context.image:
                fg = 109
            if context.video:
                fg = 66
            if context.audio:
                fg = 116
            if context.document:
                fg = 151
            if context.container:
                attr |= bold
                fg = 158
            if context.directory:
                attr |= bold
                fg = 194
            elif context.executable and not \
                    any((context.media, context.container,
                       context.fifo, context.socket)):
                attr |= bold
                fg = 159
            if context.socket:
                fg = 109
                attr |= bold
            if context.fifo or context.device:
                fg = 144
                if context.device:
                    attr |= bold
            if context.link:
                fg = context.good and 193 or 116
                bg = 234
            if context.bad:
                bg = 235
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (158, 72):
                    fg = 248
                else:
                    fg = 158
            if not context.selected and (context.cut or context.copied):
                fg = 153
                bg = 234
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = 195
            if context.badinfo:
                if attr & reverse:
                    bg = 66
                else:
                    fg = 66

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = context.bad and 158 or 122
            elif context.directory:
                fg = 122
            elif context.tab:
                if context.good:
                    bg = 44
            elif context.link:
                fg = 49

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 108
                elif context.bad:
                    fg = 65
            if context.marked:
                attr |= bold | reverse
                fg = 158
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 194
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 116
                attr &= ~bold
            if context.vcscommit:
                fg = 144
                attr &= ~bold


        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 116

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color


        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 60
            elif context.vcschanged:
                fg = 194
            elif context.vcsunknown:
                fg = 194
            elif context.vcsstaged:
                fg = 108
            elif context.vcssync:
                fg = 108
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 108
            elif context.vcsbehind:
                fg = 194
            elif context.vcsahead:
                fg = 116
            elif context.vcsdiverged:
                fg = 23
            elif context.vcsunknown:
                fg = 194

        return fg, bg, attr
