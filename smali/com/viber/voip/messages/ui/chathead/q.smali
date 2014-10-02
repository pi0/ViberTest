.class Lcom/viber/voip/messages/ui/chathead/q;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/q;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput p2, p0, Lcom/viber/voip/messages/ui/chathead/q;->a:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/q;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->N(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/q;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->G(Lcom/viber/voip/messages/ui/chathead/d;)V

    .line 1500
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/q;->a:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    .line 1501
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/q;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 1505
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/q;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/q;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;)V

    .line 1506
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/q;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
