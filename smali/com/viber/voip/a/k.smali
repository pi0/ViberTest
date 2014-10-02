.class public Lcom/viber/voip/a/k;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/a/x;

.field private final b:Lcom/viber/voip/a/x;

.field private final c:Lcom/viber/voip/a/x;

.field private final d:Lcom/viber/voip/a/x;

.field private final e:Lcom/viber/voip/a/x;

.field private final f:Lcom/viber/voip/a/x;

.field private final g:Lcom/viber/voip/a/x;

.field private final h:Lcom/viber/voip/a/x;

.field private final i:Lcom/viber/voip/a/x;

.field private final j:Lcom/viber/voip/a/x;

.field private final k:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 872
    const-string/jumbo v0, "ContactInfo"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 875
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Regular_call"

    const-string/jumbo v3, "GSM"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->a:Lcom/viber/voip/a/x;

    .line 876
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Regular_message"

    const-string/jumbo v3, "GSM"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->b:Lcom/viber/voip/a/x;

    .line 877
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Send_mail"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->c:Lcom/viber/voip/a/x;

    .line 878
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "View_photo"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->d:Lcom/viber/voip/a/x;

    .line 879
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Favorite"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->e:Lcom/viber/voip/a/x;

    .line 880
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "DeFavorite"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->f:Lcom/viber/voip/a/x;

    .line 881
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Edit"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->g:Lcom/viber/voip/a/x;

    .line 882
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Add_to_contacts"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->h:Lcom/viber/voip/a/x;

    .line 883
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Invite"

    const-string/jumbo v3, "Success"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->i:Lcom/viber/voip/a/x;

    .line 884
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Invite"

    const-string/jumbo v3, "Failed"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->j:Lcom/viber/voip/a/x;

    .line 885
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Invite"

    const-string/jumbo v3, "Already_Viber"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->k:Lcom/viber/voip/a/x;

    .line 873
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 868
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 875
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Regular_call"

    const-string/jumbo v3, "GSM"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->a:Lcom/viber/voip/a/x;

    .line 876
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Regular_message"

    const-string/jumbo v3, "GSM"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->b:Lcom/viber/voip/a/x;

    .line 877
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Send_mail"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->c:Lcom/viber/voip/a/x;

    .line 878
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "View_photo"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->d:Lcom/viber/voip/a/x;

    .line 879
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Favorite"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->e:Lcom/viber/voip/a/x;

    .line 880
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "DeFavorite"

    const-string/jumbo v3, "Personalize"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->f:Lcom/viber/voip/a/x;

    .line 881
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Edit"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->g:Lcom/viber/voip/a/x;

    .line 882
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Add_to_contacts"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->h:Lcom/viber/voip/a/x;

    .line 883
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Invite"

    const-string/jumbo v3, "Success"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->i:Lcom/viber/voip/a/x;

    .line 884
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Invite"

    const-string/jumbo v3, "Failed"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->j:Lcom/viber/voip/a/x;

    .line 885
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contact"

    const-string/jumbo v2, "Invite"

    const-string/jumbo v3, "Already_Viber"

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/k;->k:Lcom/viber/voip/a/x;

    .line 869
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/viber/voip/a/k;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/viber/voip/a/k;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/viber/voip/a/k;->c:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final f()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/viber/voip/a/k;->d:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final g()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/viber/voip/a/k;->e:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final h()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/viber/voip/a/k;->f:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final i()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/viber/voip/a/k;->g:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final j()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/viber/voip/a/k;->h:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final k()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/viber/voip/a/k;->i:Lcom/viber/voip/a/x;

    return-object v0
.end method
