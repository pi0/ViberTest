.class public Lcom/viber/voip/contacts/b/b/k;
.super Lcom/viber/voip/contacts/b/b/a/l;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/f;


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field private static l:Ljava/lang/String;

.field private static m:Z


# instance fields
.field private n:Lcom/viber/voip/contacts/b/i;

.field private o:Lcom/viber/voip/contacts/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    const-class v0, Lcom/viber/voip/contacts/b/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/b/k;->l:Ljava/lang/String;

    .line 27
    sput-boolean v5, Lcom/viber/voip/contacts/b/b/k;->m:Z

    .line 158
    new-instance v0, Lcom/viber/voip/contacts/b/b/l;

    sget-object v1, Lcom/viber/provider/contacts/f;->c:Landroid/net/Uri;

    const-class v2, Lcom/viber/voip/contacts/b/b/a/l;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/viber/voip/messages/orm/creator/Creator;

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v5, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/viber/voip/contacts/b/b/b;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/contacts/b/b/l;-><init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/k;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/l;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/a/e;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/b/b/a/l;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 34
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->f:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/k;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/k;->g:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/k;->h:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/c/f/b/d;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/l;-><init>()V

    .line 46
    iget-object v0, p1, Lcom/viber/voip/contacts/c/f/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/viber/voip/contacts/c/f/b/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->c:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/viber/voip/contacts/c/f/b/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/k;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/k;->g:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/k;->h:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/l;-><init>()V

    .line 56
    iput-object p3, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->c:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/viber/voip/contacts/b/b/k;->d:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/viber/voip/contacts/b/b/k;->e:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/viber/voip/contacts/b/b/k;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/b/b/k;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/k;->g:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/contacts/b/b/k;->h:I

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/k;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/viber/voip/contacts/b/b/k;->g:I

    return p1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/util/hd;->b(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)I

    move-result v0

    .line 70
    if-lez v0, :cond_1

    .line 71
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/k;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/k;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/k;Lcom/viber/voip/contacts/b/a;)Lcom/viber/voip/contacts/b/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->o:Lcom/viber/voip/contacts/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/k;Lcom/viber/voip/contacts/b/i;)Lcom/viber/voip/contacts/b/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->n:Lcom/viber/voip/contacts/b/i;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/k;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/viber/voip/contacts/b/b/k;->h:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/k;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/k;->id:J

    return-wide p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/k;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/k;->i:J

    return-wide p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/b/b/k;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/k;->j:J

    return-wide p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/viber/voip/contacts/b/b/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->f:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/viber/voip/contacts/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/k;->n:Lcom/viber/voip/contacts/b/i;

    .line 149
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/viber/voip/contacts/b/i;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->n:Lcom/viber/voip/contacts/b/i;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    iget v1, p0, Lcom/viber/voip/contacts/b/b/k;->g:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/viber/voip/contacts/b/a;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/k;->o:Lcom/viber/voip/contacts/b/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NumberDataEntityImpl [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/k;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canonized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/k;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/k;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rawId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/k;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/k;->n:Lcom/viber/voip/contacts/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
