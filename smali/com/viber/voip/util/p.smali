.class public Lcom/viber/voip/util/p;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/viber/voip/util/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/p;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/util/p;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :cond_0
    return-void
.end method
