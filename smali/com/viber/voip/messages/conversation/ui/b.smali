.class public Lcom/viber/voip/messages/conversation/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/conversation/ui/e;

.field private c:Landroid/view/ViewStub;

.field private d:Lcom/viber/voip/messages/conversation/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/messages/conversation/ui/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/ui/f;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f0702e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->c:Landroid/view/ViewStub;

    .line 25
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/b;->d:Lcom/viber/voip/messages/conversation/ui/f;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/b;)Lcom/viber/voip/messages/conversation/ui/f;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->d:Lcom/viber/voip/messages/conversation/ui/f;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/viber/voip/messages/conversation/ui/e;-><init>(Lcom/viber/voip/messages/conversation/ui/b;Landroid/view/View;Lcom/viber/voip/messages/conversation/ui/c;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/b;->b()V

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->d:Landroid/widget/TextView;

    const v1, 0x7f0c04bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    const v1, 0x7f0c04be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/c;-><init>(Lcom/viber/voip/messages/conversation/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/b;->a()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/b;->b()V

    .line 69
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/conversation/ui/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "showNoParticipantsAlert start"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->d:Landroid/widget/TextView;

    const v1, 0x7f0c04c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    const v1, 0x7f0c04c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/b;->b:Lcom/viber/voip/messages/conversation/ui/e;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/e;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/d;-><init>(Lcom/viber/voip/messages/conversation/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    return-void
.end method
