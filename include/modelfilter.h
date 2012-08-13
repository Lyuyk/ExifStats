//ExifStats - Statistics
//Copyright (C) 2010-2012 Dani J

//This program is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.

//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.

//You should have received a copy of the GNU General Public License
//along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifndef MODELFILTER_H
#define MODELFILTER_H

#include <QStringList>
#include "ifilter.h"

class ModelFilter : public IFilter
{
public:
    ModelFilter(const QStringList& values);
    virtual bool match(Exiv2::ExifData &exifData);
private:
    const QStringList list;
};

#endif // MODELFILTER_H
