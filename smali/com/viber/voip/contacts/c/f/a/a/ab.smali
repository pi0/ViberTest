.class public Lcom/viber/voip/contacts/c/f/a/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private g:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private h:Landroid/os/Handler;

.field private i:Lcom/viber/voip/contacts/c/f/a/a/aj;

.field private j:Lcom/viber/voip/contacts/c/f/a/a/ae;

.field private k:Lcom/viber/voip/contacts/c/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/ab;->a:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimetype IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/ab;->b:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "display_name IS NOT NULL AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "contact_id>=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "account_type<> \'com.viber.voip.account\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/ab;->c:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(((contact_id|| \'_\' ||raw_contact_id|| \'_\' ||version|| \'_\' || starred) NOT IN (%s)) OR lookup NOT IN (%s))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/ab;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/contacts/c/f/a/a/aj;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->k:Lcom/viber/voip/contacts/c/e/b;

    .line 92
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/e;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->e:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 93
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 94
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/c;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->g:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 95
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->h:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->i:Lcom/viber/voip/contacts/c/f/a/a/aj;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/ab;)Lcom/viber/voip/contacts/c/f/a/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->i:Lcom/viber/voip/contacts/c/f/a/a/aj;

    return-object v0
.end method

.method private a(ZLcom/viber/voip/contacts/c/f/a/a/ae;JI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 125
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->j:Lcom/viber/voip/contacts/c/f/a/a/ae;

    .line 126
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->e:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contact_id ASC, raw_contact_id ASC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " LIMIT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/viber/voip/contacts/c/f/a/a/ab;->d:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/viber/voip/contacts/c/f/a/a/ae;->a:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p2, Lcom/viber/voip/contacts/c/f/a/a/ae;->b:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v6, v2, v0, v3}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    return-void

    .line 126
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "in_visible_group=1 AND "

    goto :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/a/a/ab;)Lcom/viber/voip/contacts/c/f/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->j:Lcom/viber/voip/contacts/c/f/a/a/ae;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/f/a/a/ae;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 134
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->j:Lcom/viber/voip/contacts/c/f/a/a/ae;

    .line 135
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string/jumbo v3, "_id IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/viber/voip/contacts/c/f/a/a/ae;->d:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/f/a/a/ak;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 109
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->k:Lcom/viber/voip/contacts/c/e/b;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v9

    const-string/jumbo v5, "in_visible_group=1"

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/ac;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/ac;-><init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/contacts/c/f/a/a/ak;)V

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 122
    return-void
.end method

.method public a(ZLcom/viber/voip/contacts/c/f/a/a/ae;J)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const/16 v5, 0x320

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(ZLcom/viber/voip/contacts/c/f/a/a/ae;JI)V

    .line 106
    return-void
.end method

.method public b(Lcom/viber/voip/contacts/c/f/a/a/ae;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 139
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->j:Lcom/viber/voip/contacts/c/f/a/a/ae;

    .line 140
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->f:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string/jumbo v3, "_id IN (%s) AND deleted=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/viber/voip/contacts/c/f/a/a/ae;->d:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public c(Lcom/viber/voip/contacts/c/f/a/a/ae;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 144
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->j:Lcom/viber/voip/contacts/c/f/a/a/ae;

    .line 145
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->g:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string/jumbo v3, "_id IN (%s) AND in_visible_group=0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/viber/voip/contacts/c/f/a/a/ae;->c:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->i:Lcom/viber/voip/contacts/c/f/a/a/aj;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ab;->h:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/f/a/a/ad;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/contacts/c/f/a/a/ad;-><init>(Lcom/viber/voip/contacts/c/f/a/a/ab;ILcom/viber/voip/messages/orm/manager/EntityManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    goto :goto_0
.end method
