//
//  MCTextView.m
//  MemoryChainKit
//
//  Created by Marc Zhao on 2019/5/21.
//  Copyright © 2019 Memory Chain technology(China) co,LTD. All rights reserved.
//

#import "MCTextView.h"

@interface MCTextView ()

@property (nonatomic, strong) UIImageView* backgroundView;
@property (nonatomic, strong) UILabel *placeholderLabel;
@property (nonatomic, strong) UILabel *counterLabel;

@end

@implementation MCTextView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    [self commonInit];
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    [self commonInit];
    return self;
}

- (void)commonInit {
    if (self) {
        self.scrollEnabled = YES;
        self.backgroundColor = [UIColor clearColor];
        self.backgroundView = [[UIImageView alloc] initWithFrame:CGRectMake(0., 0., self.frame.size.width, self.frame.size.height)];
        UIImage *backgroundImage = [[UIImage imageNamed:@"background-textfield"] resizableImageWithCapInsets:UIEdgeInsetsMake(5., 10., 5., 10.)];
        self.backgroundView.image = backgroundImage;
        self.scrollsToTop = NO;
        
        self.placeholderLabel = [UILabel new];
        self.placeholderLabel.lineBreakMode = NSLineBreakByWordWrapping;
        self.placeholderLabel.numberOfLines = 0;
        self.placeholderLabel.tag = 999;
        
        self.counterLabel = [UILabel new];
        self.counterLabel.tag = 998;
        self.counterLabel.textAlignment = NSTextAlignmentRight;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:self];
    }
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (BOOL)hasCounter {
    return self.maxCharacters > 0;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.backgroundView.frame = CGRectMake(0., self.contentOffset.y, self.frame.size.width, self.frame.size.height);
    if (!self.backgroundView.superview) {
        [self addSubview:self.backgroundView];
    }
    [self sendSubviewToBack:self.backgroundView];
    
    CGFloat leftMargin = 8.;
    CGFloat topMargin = 8.;
    self.placeholderLabel.frame = CGRectMake(leftMargin + self.contentInset.left, topMargin + self.contentInset.top, self.frame.size.width - leftMargin * 2 - self.contentInset.left - self.contentInset.right, self.frame.size.height - topMargin - self.contentInset.top - self.contentInset.bottom);
    self.placeholderLabel.numberOfLines = 0;
    self.placeholderLabel.font = self.font;
    self.placeholderLabel.backgroundColor = [UIColor clearColor];
    self.placeholderLabel.textColor = [UIColor lightGrayColor];
    [self.placeholderLabel sizeToFit];
    self.placeholderLabel.hidden = [self.text length];
    if (!self.placeholderLabel.superview) {
        [self addSubview:self.placeholderLabel];
    }
    
    CGFloat counterLabelWidth = 50.;
    CGFloat counterLabelHeight = 25;
    CGFloat counterLabelRight = 6.;
    CGFloat counterLabelBottom = 4.;
    self.counterLabel.frame = CGRectMake(self.frame.size.width - counterLabelWidth - counterLabelRight - self.contentInset.right, self.frame.size.height - counterLabelHeight - counterLabelBottom, counterLabelWidth, counterLabelHeight);
    self.counterLabel.font = self.font;
    self.counterLabel.backgroundColor = [UIColor clearColor];
    self.counterLabel.textColor = [UIColor lightGrayColor];
    self.counterLabel.hidden = ![self hasCounter];
    if (!self.counterLabel.superview) {
        [self addSubview:self.counterLabel];
    }
}

#pragma mark - getters & setters

- (void)setText:(NSString *)text {
    [super setText:text];
    [self textChanged:nil];
}

- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;
    self.placeholderLabel.text = placeholder;
    [self.placeholderLabel sizeToFit];
}

- (void)setCounterText:(NSUInteger)charactersLeft {
    self.counterLabel.text = [NSString stringWithFormat:@"%lu/%lu", (unsigned long)self.text.length, (unsigned long)charactersLeft];
}
- (void)setMaxCharacters:(NSUInteger)maxCharacters {
    _maxCharacters = maxCharacters;
    [self setCounterText:maxCharacters];
    self.counterLabel.hidden = [self hasCounter];
    self.contentInset = UIEdgeInsetsMake(0, 0, [self hasCounter] ? 17. :0., 0.);
}

#pragma mark - text editing events

- (void)textChanged:(NSNotification *)notification {
    if ([self.placeholder length]) {
        self.placeholderLabel.hidden = [self.text length];
    }
    if (self.maxCharacters > 0) {
        if ((self.markedTextRange == nil) && (self.maxCharacters < [self.text length])) {
            self.text = [self.text substringToIndex:self.maxCharacters];
        }
        if (self.maxCharacters >= [self.text length]) {
            [self setCounterText:self.maxCharacters - [self.text length]];
        }
    }
}

@end
