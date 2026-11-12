# MVA-course-notes

Course notes that I took in the MVA program at ENS Paris-Saclay during the 26/27 period.
Only completed versions are published here.

## Disclaimer

These notes are my own personal write-ups, taken during the lectures. They may contain typos or mistakes, for which I am solely responsible. They are not official course material and should not be taken as the lecturers' notes.

To report an error or suggest a fix, please [open an issue](../../issues) or contact me at oraakkol@hotmail.com.

## Courses

| Course | Semester | Language | Folder |
|---|---|---|---|
| Subpixel Image Processing | 1 | French | [`subpixel-image-processing/`](subpixel-image-processing/) |
| Optimal Transport | 1 | – | _to be added_ |

## Subpixel Image Processing

Notes are written in French. 7 lectures in total. Official course page: <https://helios2.mi.parisdescartes.fr/~moisan/mva/index.php>

| Done | Lecture | Date | Source |
|---|---|---|---|
| [x] | 1 | 2 October 2026 | `lectures/lec01.tex` |
| [ ] | 2 | | `lectures/lec02.tex` |
| [ ] | 3 | | `lectures/lec03.tex` |
| [ ] | 4 | | `lectures/lec04.tex` |
| [ ] | 5 | | `lectures/lec05.tex` |
| [ ] | 6 | | `lectures/lec06.tex` |
| [ ] | 7 | | `lectures/lec07.tex` |

## Structure

```
<course>/
├── main.tex
├── preamble.tex
├── macros.tex
├── lectures/    # lec01.tex, lec02.tex, ...
└── figures/     # one sub-folder per lecture: lec01/, lec02/, ...
```

## Building

Requires `tectonic` and `librsvg` (`brew install tectonic librsvg`).

```sh
make                                       # all courses
make COURSES=subpixel-image-processing     # one course
make clean
```

The PDF is written to `<course>/<course>.pdf`.

## License

See [LICENSE](LICENSE).
