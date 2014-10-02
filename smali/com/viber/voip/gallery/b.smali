.class public abstract Lcom/viber/voip/gallery/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View$OnTouchListener;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/b;->b:Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/viber/voip/gallery/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/c;-><init>(Lcom/viber/voip/gallery/b;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/b;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, Lcom/viber/voip/gallery/b;->b:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/gallery/b;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/viber/voip/gallery/b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
