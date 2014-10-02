.class public Lcom/viber/voip/a/l;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/k;

.field public final b:Lcom/viber/voip/a/k;

.field public final c:Lcom/viber/voip/a/k;

.field public final d:Lcom/viber/voip/a/c;

.field public final e:Lcom/viber/voip/a/c;

.field private final f:Lcom/viber/voip/a/x;

.field private final g:Lcom/viber/voip/a/x;

.field private final h:Lcom/viber/voip/a/x;

.field private final i:Lcom/viber/voip/a/x;

.field private final j:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 953
    const-string/jumbo v0, "Contacts"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 956
    new-instance v0, Lcom/viber/voip/a/k;

    const-string/jumbo v1, "Contact_info_Viber"

    invoke-direct {v0, v1}, Lcom/viber/voip/a/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->a:Lcom/viber/voip/a/k;

    .line 957
    new-instance v0, Lcom/viber/voip/a/k;

    const-string/jumbo v1, "Contact_info_nonViber"

    invoke-direct {v0, v1}, Lcom/viber/voip/a/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->b:Lcom/viber/voip/a/k;

    .line 958
    new-instance v0, Lcom/viber/voip/a/k;

    const-string/jumbo v1, "Contact_info_with_logs"

    invoke-direct {v0, v1}, Lcom/viber/voip/a/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->c:Lcom/viber/voip/a/k;

    .line 960
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Contacts_Viber"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->d:Lcom/viber/voip/a/c;

    .line 961
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "Contacts_All"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->e:Lcom/viber/voip/a/c;

    .line 963
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Tap_On_favorite"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->f:Lcom/viber/voip/a/x;

    .line 964
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Tap_On_me"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->g:Lcom/viber/voip/a/x;

    .line 965
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Tap_On_contact"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->h:Lcom/viber/voip/a/x;

    .line 966
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Update_contacts"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->i:Lcom/viber/voip/a/x;

    .line 967
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Add_new_contact"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/l;->j:Lcom/viber/voip/a/x;

    .line 954
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/viber/voip/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 990
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Sync_contacts_finished"

    const-string/jumbo v3, ""

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final b(J)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    .line 994
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Sync_failed"

    const-string/jumbo v3, "Errors"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/viber/voip/a/l;->f:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/viber/voip/a/l;->g:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/viber/voip/a/l;->h:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final f()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/viber/voip/a/l;->j:Lcom/viber/voip/a/x;

    return-object v0
.end method
