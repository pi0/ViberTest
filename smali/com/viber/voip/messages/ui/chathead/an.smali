.class Lcom/viber/voip/messages/ui/chathead/an;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/b;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

.field final synthetic e:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/an;->e:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/an;->a:Lcom/viber/voip/messages/ui/chathead/b;

    iput-object p3, p0, Lcom/viber/voip/messages/ui/chathead/an;->b:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/viber/voip/messages/ui/chathead/an;->c:Z

    iput-object p5, p0, Lcom/viber/voip/messages/ui/chathead/an;->d:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 6
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/an;->e:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/an;->a:Lcom/viber/voip/messages/ui/chathead/b;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/an;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/an;->e:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v4, p0, Lcom/viber/voip/messages/ui/chathead/an;->c:Z

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/an;->d:Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 657
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    .line 658
    return-void
.end method
