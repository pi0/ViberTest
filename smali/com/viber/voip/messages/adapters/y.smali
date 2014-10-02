.class Lcom/viber/voip/messages/adapters/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/viber/voip/stickers/ui/b;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/view/View;

.field public f:Lcom/viber/voip/messages/adapters/v;

.field public g:Z

.field final synthetic h:Lcom/viber/voip/messages/adapters/q;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/adapters/q;)V
    .locals 4
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/y;->h:Lcom/viber/voip/messages/adapters/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/q;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    const v1, 0x7f0703bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/y;->c:Landroid/widget/ImageView;

    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    const v1, 0x7f0703be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    .line 361
    new-instance v0, Lcom/viber/voip/stickers/ui/b;

    invoke-static {p1}, Lcom/viber/voip/messages/adapters/q;->g(Lcom/viber/voip/messages/adapters/q;)Lcom/viber/voip/stickers/b;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/y;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/stickers/ui/b;-><init>(Lcom/viber/voip/stickers/b;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    .line 363
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    const v1, 0x7f0703bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/y;->e:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/b;->a()V

    .line 383
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->f:Lcom/viber/voip/messages/adapters/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/y;->f:Lcom/viber/voip/messages/adapters/v;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/adapters/v;->a(Landroid/view/MotionEvent;)V

    .line 378
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
