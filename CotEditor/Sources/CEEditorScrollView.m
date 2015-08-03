/*
 
 CEEditorScrollView.m
 
 CotEditor
 http://coteditor.com
 
 Created by 1024jp on 2015-01-15.
 
 ------------------------------------------------------------------------------
 
 © 2015 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

#import "CEEditorScrollView.h"
#import "CELineNumberView.h"


@implementation CEEditorScrollView

#pragma mark Superclass Methods

// ------------------------------------------------------
/// use custom ruler view
+ (nonnull Class)rulerViewClass
// ------------------------------------------------------
{
    return [CELineNumberView class];
}


// ------------------------------------------------------
/// initialize instance
- (nonnull instancetype)initWithFrame:(NSRect)frameRect
// ------------------------------------------------------
{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setHasVerticalRuler:YES];
        [self setHasHorizontalRuler:NO];
    }
    return self;
}



#pragma mark Public Methods

// ------------------------------------------------------
/// update line numbers
- (void)invalidateLineNumber
// ------------------------------------------------------
{
    [[self lineNumberView] setNeedsDisplay:YES];
}



#pragma mark Private Methods

// ------------------------------------------------------
/// return current line number veiw
- (nullable NSRulerView *)lineNumberView
// ------------------------------------------------------
{
    return [self verticalRulerView];
}

@end
