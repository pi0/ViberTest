.class public Lcom/viber/voip/a/m;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public a:Lcom/viber/voip/a/q;

.field public final b:Lcom/viber/voip/a/ac;

.field public final c:Lcom/viber/voip/a/ax;

.field public final d:Lcom/viber/voip/a/ay;

.field public final e:Lcom/viber/voip/a/av;

.field public final f:Lcom/viber/voip/a/k;

.field public final g:Lcom/viber/voip/a/ai;

.field private final h:Lcom/viber/voip/a/x;

.field private final i:Lcom/viber/voip/a/x;

.field private final j:Lcom/viber/voip/a/x;

.field private final k:Lcom/viber/voip/a/x;

.field private final l:Lcom/viber/voip/a/x;

.field private final m:Lcom/viber/voip/a/x;

.field private final n:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 643
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 678
    new-instance v0, Lcom/viber/voip/a/ac;

    invoke-direct {v0, v4}, Lcom/viber/voip/a/ac;-><init>(Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    .line 679
    new-instance v0, Lcom/viber/voip/a/ax;

    invoke-direct {v0}, Lcom/viber/voip/a/ax;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/m;->c:Lcom/viber/voip/a/ax;

    .line 680
    new-instance v0, Lcom/viber/voip/a/ay;

    invoke-direct {v0}, Lcom/viber/voip/a/ay;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/m;->d:Lcom/viber/voip/a/ay;

    .line 681
    new-instance v0, Lcom/viber/voip/a/av;

    invoke-direct {v0}, Lcom/viber/voip/a/av;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/m;->e:Lcom/viber/voip/a/av;

    .line 682
    new-instance v0, Lcom/viber/voip/a/k;

    invoke-direct {v0}, Lcom/viber/voip/a/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/m;->f:Lcom/viber/voip/a/k;

    .line 683
    new-instance v0, Lcom/viber/voip/a/ai;

    invoke-direct {v0, v4}, Lcom/viber/voip/a/ai;-><init>(Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    .line 685
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Text"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->h:Lcom/viber/voip/a/x;

    .line 686
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Video_button"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->i:Lcom/viber/voip/a/x;

    .line 687
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Custom_Location"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->j:Lcom/viber/voip/a/x;

    .line 688
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Load_Earlier_message"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->k:Lcom/viber/voip/a/x;

    .line 689
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Swipe_to_quick_messages"

    const-string/jumbo v3, "Navigation"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->l:Lcom/viber/voip/a/x;

    .line 690
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Tap_on_conversation"

    const-string/jumbo v3, "Navigation"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->m:Lcom/viber/voip/a/x;

    .line 692
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Doodle"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/m;->n:Lcom/viber/voip/a/x;

    .line 644
    const-string/jumbo v0, "Messages"

    invoke-virtual {p0, v0}, Lcom/viber/voip/a/m;->a(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/viber/voip/a/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 711
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tap_on_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/a/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final a(Z)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 707
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attached_Location_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "ON"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "OFF"

    goto :goto_0
.end method

.method public final b(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 719
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cancel_Sending_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/a/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/viber/voip/a/m;->a(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/ac;->a(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/viber/voip/a/m;->c:Lcom/viber/voip/a/ax;

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/ax;->a(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/viber/voip/a/m;->d:Lcom/viber/voip/a/ay;

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/ay;->a(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/viber/voip/a/m;->e:Lcom/viber/voip/a/av;

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/av;->a(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/viber/voip/a/m;->f:Lcom/viber/voip/a/k;

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/k;->a(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/viber/voip/a/m;->g:Lcom/viber/voip/a/ai;

    invoke-virtual {v0, p1}, Lcom/viber/voip/a/ai;->a(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 695
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Send_Text"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 699
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Video_button"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 703
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Send_Custom_Location"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final f()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 723
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Swipe_to_quick_messages"

    const-string/jumbo v3, "Navigation"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final g()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 727
    new-instance v0, Lcom/viber/voip/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Tap_on_conversation"

    const-string/jumbo v3, "Navigation"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final h()Lcom/viber/voip/a/x;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 731
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Messages"

    const-string/jumbo v2, "Send_Doodle"

    const-string/jumbo v3, "Messaging"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method
