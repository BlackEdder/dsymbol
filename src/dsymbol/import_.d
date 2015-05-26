/**
 * This file is part of DCD, a development tool for the D programming language.
 * Copyright (C) 2014 Brian Schott
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

module dsymbol.import_;

import containers.unrolledlist;
import dsymbol.string_interning;
import std.typecons;

/**
 * Import information
 */
struct ImportInformation
{
	/// Import statement parts
	UnrolledList!istring importParts;
	/// module relative path
	istring modulePath;
	/// symbols to import from this module
	UnrolledList!(Tuple!(istring, istring), false) importedSymbols;
	/// true if the import is public
	bool isPublic;
}
