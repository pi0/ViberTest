.class public Lcom/viber/voip/user/PhotoSelectionActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# static fields
.field private static final BACKDROP_FADEOUT_DURATION:I = 0x64

.field public static final ENTITY_DELTA_LIST:Ljava/lang/String; = "entity_delta_list"

.field public static final EXPAND_PHOTO:Ljava/lang/String; = "expand_photo"

.field public static final IS_DIRECTORY_CONTACT:Ljava/lang/String; = "is_directory_contact"

.field public static final IS_PROFILE:Ljava/lang/String; = "is_profile"

.field private static final KEY_CURRENT_PHOTO_FILE:Ljava/lang/String; = "currentphotofile"

.field private static final KEY_SUB_ACTIVITY_IN_PROGRESS:Ljava/lang/String; = "subinprogress"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PHOTO_CONTRACT_DURATION:I = 0x32

.field private static final PHOTO_EXPAND_DURATION:I = 0x64

.field public static final PHOTO_URI:Ljava/lang/String; = "photo_uri"


# instance fields
.field private mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

.field private mAnimationPending:Z

.field private mBackdrop:Landroid/view/View;

.field private mCloseActivityWhenCameBackFromSubActivity:Z

.field private mCurrentPhotoFile:Ljava/lang/String;

.field private mExpandPhoto:Z

.field private mExpandedPhotoSize:I

.field private mFetcherConfig:Lcom/viber/voip/util/b/x;

.field private mHeightOffset:I

.field private mImageFetcher:Lcom/viber/voip/util/b/w;

.field private mIsDirectoryContact:Z

.field private mIsProfile:Z

.field protected mMessagesManager:Lcom/viber/voip/messages/i;

.field mOriginalPos:Landroid/graphics/Rect;

.field private mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

.field private mPhotoAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

.field private mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

.field private mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mPhotoUri:Landroid/net/Uri;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mSubActivityInProgress:Z

.field private mTextViewOnPic:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/PhotoSelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    .line 847
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->displayPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/user/PhotoSelectionActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/viber/voip/user/PhotoSelectionActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationPending:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->animatePhotoOpen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/viber/voip/user/PhotoSelectionActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mIsDirectoryContact:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/viber/voip/user/PhotoSelectionActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/viber/voip/user/PhotoSelectionActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/viber/voip/user/PhotoSelectionActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/viber/voip/user/PhotoSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/viber/voip/util/b/w;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mImageFetcher:Lcom/viber/voip/util/b/w;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->closePhotoAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/voip/user/PhotoSelectionActivity;)Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/viber/voip/user/PhotoSelectionActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$600(Lcom/viber/voip/user/PhotoSelectionActivity;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0
.end method

.method static synthetic access$700(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    return-void
.end method

.method private animateAwayBackground()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 674
    :goto_0
    return-void

    .line 668
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 669
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 670
    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 671
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateInBackground()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x64

    .line 653
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 662
    :goto_0
    return-void

    .line 657
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 658
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 659
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 660
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 654
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method private animatePhoto(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 625
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 629
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 630
    iput-boolean v6, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationPending:Z

    .line 632
    const-string/jumbo v0, "left"

    new-array v1, v8, [I

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v1, v6

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v2, v1, v7

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    .line 633
    const-string/jumbo v1, "top"

    new-array v2, v8, [I

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aput v3, v2, v6

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v2, v7

    invoke-static {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    .line 634
    const-string/jumbo v2, "right"

    new-array v3, v8, [I

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aput v4, v3, v6

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v4, v3, v7

    invoke-static {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 635
    const-string/jumbo v3, "bottom"

    new-array v4, v8, [I

    iget-object v5, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v4, v6

    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v3

    .line 636
    new-instance v4, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;

    iget-object v5, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Lcom/viber/voip/user/PhotoSelectionActivity$MarginObjectAnimator;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/view/View;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 642
    :cond_1
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iput-boolean v7, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationPending:Z

    .line 647
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 648
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0
.end method

.method private animatePhotoOpen()V
    .locals 2

    .prologue
    .line 470
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$4;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    .line 500
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getPhotoEndParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->animatePhoto(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 501
    return-void
.end method

.method private attachPhotoHandler()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 711
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v4, 0x4

    .line 718
    :goto_0
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/viber/voip/user/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    .line 720
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mRequestCode:I
    invoke-static {v1}, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->access$1000(Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mResultCode:I
    invoke-static {v2}, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->access$1100(Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    #getter for: Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->mData:Landroid/content/Intent;
    invoke-static {v3}, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;->access$1200(Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    .line 723
    iput-object v5, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    .line 734
    :goto_1
    return-void

    .line 711
    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/user/PhotoSelectionActivity$6;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$6;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    invoke-static {v0, v1}, Lcom/viber/voip/user/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;ZZZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    if-eqz p1, :cond_0

    .line 323
    const-string/jumbo v1, "photo_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 326
    const-string/jumbo v1, "is_profile"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const-string/jumbo v1, "is_directory_contact"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string/jumbo v1, "expand_photo"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    return-object v0
.end method

.method private closePhotoAndFinish()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$5;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mAnimationListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;

    .line 526
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->animatePhoto(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 527
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->animateAwayBackground()V

    .line 528
    return-void
.end method

.method private displayPhoto()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0xa

    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 353
    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 354
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 355
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget v5, v0, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 356
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aget v0, v0, v5

    sub-int v0, v4, v0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_2

    .line 358
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 359
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 367
    iput-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_5

    .line 370
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 377
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 380
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getPhotoEndParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 381
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mImageFetcher:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 384
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    :cond_0
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_1

    .line 393
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v1, Lcom/viber/voip/user/PhotoSelectionActivity$3;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$3;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->attachPhotoHandler()V

    .line 419
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 362
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 363
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mOriginalPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    :goto_3
    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 386
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_0

    .line 388
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    const v2, 0x7f02006f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private finishImmediatelyWithNoAnimation()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->finish()V

    .line 334
    return-void
.end method

.method private getAdditionalLeftMargin()I
    .locals 3

    .prologue
    .line 460
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/viber/voip/util/gl;->h()I

    move-result v2

    sub-int/2addr v1, v2

    .line 464
    int-to-float v1, v1

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/res/Resources;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdjustedExpandedPhotoSize(Landroid/view/View;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 269
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p2

    .line 272
    int-to-float v0, v0

    iget v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 274
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 276
    iget v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandedPhotoSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandedPhotoSize:I

    goto :goto_0
.end method

.method private getPhotoEndParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_2

    .line 430
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 431
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mIsProfile:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0242

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 433
    :goto_0
    iget-boolean v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandPhoto:Z

    if-eqz v2, :cond_2

    .line 434
    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mHeightOffset:I

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/user/PhotoSelectionActivity;->getAdjustedExpandedPhotoSize(Landroid/view/View;I)I

    move-result v2

    .line 436
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int v3, v2, v3

    .line 437
    iget-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoStartParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int v4, v2, v4

    .line 438
    if-lt v3, v6, :cond_0

    .line 440
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 441
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getAdditionalLeftMargin()I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 442
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 445
    :cond_0
    if-lt v4, v6, :cond_2

    .line 447
    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 448
    iget-boolean v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mIsProfile:Z

    if-nez v2, :cond_1

    .line 449
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 452
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoEndParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0241

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 451
    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->closePhotoAndFinish()V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 685
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 686
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/user/PhotoSelectionActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_2

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 689
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iput-object v4, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    .line 705
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    if-eqz v0, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 703
    :cond_2
    new-instance v0, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;-><init>(IILandroid/content/Intent;Lcom/viber/voip/user/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPendingPhotoResult:Lcom/viber/voip/user/PhotoSelectionActivity$PendingPhotoResult;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    iget-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finishImmediatelyWithNoAnimation()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mCloseActivityWhenCameBackFromSubActivity:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    const v0, 0x7f0300ff

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->setContentView(I)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    const-string/jumbo v0, "currentphotofile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    .line 212
    const-string/jumbo v0, "subinprogress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 217
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    .line 219
    const-string/jumbo v0, "is_profile"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mIsProfile:Z

    .line 220
    const-string/jumbo v0, "is_directory_contact"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mIsDirectoryContact:Z

    .line 221
    const-string/jumbo v0, "expand_photo"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandPhoto:Z

    .line 224
    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandedPhotoSize:I

    .line 225
    invoke-virtual {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a010b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mHeightOffset:I

    .line 227
    const v0, 0x7f07035f

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    .line 228
    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 229
    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mTextViewOnPic:Landroid/widget/TextView;

    .line 230
    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSourceBounds:Landroid/graphics/Rect;

    .line 232
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mMessagesManager:Lcom/viber/voip/messages/i;

    .line 233
    invoke-static {p0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mImageFetcher:Lcom/viber/voip/util/b/w;

    .line 234
    invoke-static {p0}, Lcom/viber/voip/util/b/x;->c(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/x;->b()Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->a()Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mFetcherConfig:Lcom/viber/voip/util/b/x;

    .line 236
    invoke-direct {p0}, Lcom/viber/voip/user/PhotoSelectionActivity;->animateInBackground()V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/user/PhotoSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$1;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mBackdrop:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/user/PhotoSelectionActivity$2;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/PhotoSelectionActivity$2;-><init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    invoke-static {v0, v1}, Lcom/viber/voip/user/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 254
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/user/PhotoSelectionActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPhotoUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mExpandedPhotoSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mExpandedPhotoSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 341
    iput-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;->destroy()V

    .line 345
    iput-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mPhotoHandler:Lcom/viber/voip/user/PhotoSelectionActivity$PhotoHandler;

    .line 347
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 679
    const-string/jumbo v0, "currentphotofile"

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string/jumbo v0, "subinprogress"

    iget-boolean v1, p0, Lcom/viber/voip/user/PhotoSelectionActivity;->mSubActivityInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 681
    return-void
.end method
