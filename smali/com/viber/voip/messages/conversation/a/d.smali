.class public Lcom/viber/voip/messages/conversation/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/a;

.field private final b:I

.field private final c:I

.field private final d:Lcom/viber/voip/messages/conversation/a/c;

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/a/a;IILcom/viber/voip/messages/conversation/a/c;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/d;->a:Lcom/viber/voip/messages/conversation/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/d;->e:Ljava/util/Queue;

    .line 88
    new-instance v0, Lcom/viber/voip/messages/conversation/a/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/a/e;-><init>(Lcom/viber/voip/messages/conversation/a/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/d;->f:Ljava/lang/Runnable;

    .line 50
    iput p3, p0, Lcom/viber/voip/messages/conversation/a/d;->c:I

    .line 51
    iput p2, p0, Lcom/viber/voip/messages/conversation/a/d;->b:I

    .line 52
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/d;->d:Lcom/viber/voip/messages/conversation/a/c;

    .line 53
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/d;->b()V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/a/a;IILcom/viber/voip/messages/conversation/a/c;Lcom/viber/voip/messages/conversation/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/d;-><init>(Lcom/viber/voip/messages/conversation/a/a;IILcom/viber/voip/messages/conversation/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/d;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/d;->e:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/a/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/d;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method private c()Landroid/view/View;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/d;->a:Lcom/viber/voip/messages/conversation/a/a;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/a;->a(Lcom/viber/voip/messages/conversation/a/a;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/d;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/d;->d:Lcom/viber/voip/messages/conversation/a/c;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/d;->d:Lcom/viber/voip/messages/conversation/a/c;

    iget v2, p0, Lcom/viber/voip/messages/conversation/a/d;->b:I

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/messages/conversation/a/c;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/d;->c()Landroid/view/View;

    move-result-object v0

    .line 70
    return-object v0
.end method
