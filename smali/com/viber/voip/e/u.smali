.class public Lcom/viber/voip/e/u;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/g;
.implements Lcom/viber/voip/settings/m;


# static fields
.field public static a:Landroid/util/SparseIntArray;

.field static b:Landroid/util/SparseIntArray;

.field static c:Landroid/util/SparseIntArray;

.field public static d:Z

.field private static e:Lcom/viber/voip/e/u;

.field private static i:Z


# instance fields
.field private f:Lcom/viber/voip/ViberApplication;

.field private g:Landroid/app/NotificationManager;

.field private h:Lcom/viber/voip/e/a/a;

.field private j:J

.field private k:I

.field private l:I

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:[Ljava/lang/String;

.field private t:Lcom/viber/voip/messages/controller/c/as;

.field private u:Lcom/viber/voip/e/ac;

.field private v:Landroid/os/Handler;

.field private w:Lcom/viber/voip/util/b/w;

.field private x:Lcom/viber/voip/e/q;

.field private y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    .line 113
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    .line 114
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    .line 146
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02d9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02db

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02dc

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0c02dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02de

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02df

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0c02da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f0c04d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f0c03b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    sget-object v0, Lcom/viber/voip/e/u;->b:Landroid/util/SparseIntArray;

    const/4 v1, -0x5

    const v2, 0x7f0c06c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02e0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02e2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02e3

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0c02e4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02e5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02e6

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0c02e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f0c04d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f0c03b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget-object v0, Lcom/viber/voip/e/u;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x5

    const v2, 0x7f0c06c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02d4

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02d5

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0c02d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Lcom/viber/voip/e/u;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0c02d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 123
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/viber/voip/e/u;->j:J

    .line 125
    iput v2, p0, Lcom/viber/voip/e/u;->k:I

    .line 126
    iput v2, p0, Lcom/viber/voip/e/u;->l:I

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/e/u;->m:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/e/u;->n:Ljava/util/HashSet;

    .line 132
    iput-wide v5, p0, Lcom/viber/voip/e/u;->o:J

    .line 133
    iput-wide v5, p0, Lcom/viber/voip/e/u;->p:J

    .line 134
    iput-wide v5, p0, Lcom/viber/voip/e/u;->q:J

    .line 296
    new-instance v0, Lcom/viber/voip/e/v;

    invoke-direct {v0, p0}, Lcom/viber/voip/e/v;-><init>(Lcom/viber/voip/e/u;)V

    iput-object v0, p0, Lcom/viber/voip/e/u;->x:Lcom/viber/voip/e/q;

    .line 178
    iput-object p1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    .line 179
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    .line 180
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/u;->v:Landroid/os/Handler;

    .line 181
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/u;->w:Lcom/viber/voip/util/b/w;

    .line 182
    new-instance v0, Lcom/viber/voip/e/ac;

    invoke-direct {v0}, Lcom/viber/voip/e/ac;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    .line 183
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    .line 184
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/u;->s:[Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 186
    invoke-static {}, Lcom/viber/voip/e/a;->a()Lcom/viber/voip/e/a;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/e/u;->x:Lcom/viber/voip/e/q;

    invoke-virtual {v0, v3}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/r;)V

    .line 187
    invoke-direct {p0}, Lcom/viber/voip/e/u;->i()V

    .line 188
    invoke-direct {p0}, Lcom/viber/voip/e/u;->n()V

    .line 190
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->z()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/e/u;->i:Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setServiceContext showNotification:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/viber/voip/e/u;->i:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->l()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/e/u;->d:Z

    .line 200
    invoke-direct {p0}, Lcom/viber/voip/e/u;->j()V

    .line 201
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v3

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setServiceContext ClassCastException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",showNotification:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 195
    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/viber/voip/e/u;->i:Z

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/e/u;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/viber/voip/e/u;->o:J

    return-wide p1
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/app/Notification;
    .locals 4
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v1

    .line 411
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/viber/voip/contacts/c/d/b;->b(Ljava/lang/String;)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-interface {v2, p1, v1, v0}, Lcom/viber/voip/e/a/a;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getInviter()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;IZLjava/lang/String;)Landroid/app/Notification;
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c04a3

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 660
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v9

    .line 662
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3}, Lcom/viber/voip/e/ac;->e()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    if-nez p8, :cond_5

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    invoke-virtual {v3}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 670
    :goto_3
    invoke-static {v11}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 672
    const/4 v2, 0x0

    .line 673
    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_6

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3}, Lcom/viber/voip/e/ac;->i()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3}, Lcom/viber/voip/e/ac;->j()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;JLandroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 708
    :cond_1
    :goto_4
    return-object v2

    .line 659
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 660
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 662
    :cond_4
    sget-object v3, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    invoke-virtual {v3}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/ConversationEntity;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_3

    .line 676
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    .line 677
    const-string/jumbo v3, "rename"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 678
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p7

    move-object/from16 v13, p6

    move-object/from16 v14, p5

    invoke-interface/range {v7 .. v14}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_4

    .line 679
    :cond_7
    const-string/jumbo v3, "you_join"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 680
    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "you_join"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Landroid/app/Notification;

    move-result-object v2

    goto :goto_4

    .line 683
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->m:Ljava/util/Map;

    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v12, p7

    invoke-interface/range {v3 .. v12}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_4

    .line 686
    :cond_9
    const-string/jumbo v3, "join"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->m:Ljava/util/Map;

    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v12, p7

    invoke-interface/range {v3 .. v12}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/lang/String;Ljava/util/List;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_4

    .line 689
    :cond_a
    const-string/jumbo v3, "pg_join"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 690
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v6, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p4

    move/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_4

    .line 691
    :cond_b
    const-string/jumbo v3, "group_icon_changed"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "group_background_changed"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "group_many_attrs_changed"

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p7

    move-object/from16 v13, p6

    move-object/from16 v14, p5

    invoke-interface/range {v7 .. v14}, Lcom/viber/voip/e/a/a;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ILcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_4

    .line 697
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x5

    if-ne v2, v3, :cond_e

    .line 698
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-virtual/range {p6 .. p6}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v13

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p7

    move-object/from16 v15, p5

    invoke-interface/range {v7 .. v15}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;IJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_4

    .line 700
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v2}, Lcom/viber/voip/e/ac;->e()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v2}, Lcom/viber/voip/e/ac;->g()Z

    move-result v17

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v18, p8

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p4

    move-object/from16 v22, v11

    move/from16 v23, p7

    invoke-interface/range {v12 .. v23}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;->getIconId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 428
    iget-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/ConversationEntity;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 627
    iget-object v1, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v1}, Lcom/viber/voip/e/ac;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 633
    :goto_0
    if-eqz v1, :cond_8

    .line 634
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getConversationType()I

    move-result v6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v7

    :goto_2
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativeContactId()J

    move-result-wide v9

    :goto_3
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v11

    :goto_4
    const/4 v12, 0x1

    invoke-static/range {v1 .. v12}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 647
    :goto_5
    return-object v1

    .line 627
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 629
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v1}, Lcom/viber/voip/e/ac;->g()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p4, :cond_2

    const-string/jumbo v1, "join"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 634
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 644
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.MESSAGES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static a()Lcom/viber/voip/e/u;
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/viber/voip/e/u;->e:Lcom/viber/voip/e/u;

    if-nez v0, :cond_1

    .line 218
    const-class v1, Lcom/viber/voip/e/u;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lcom/viber/voip/e/u;->e:Lcom/viber/voip/e/u;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/viber/voip/e/u;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/e/u;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/e/u;->e:Lcom/viber/voip/e/u;

    .line 222
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    sget-object v0, Lcom/viber/voip/e/u;->e:Lcom/viber/voip/e/u;

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/e/u;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0c02e9

    const v9, 0x7f0c02e8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 475
    const-string/jumbo v0, ""

    .line 476
    invoke-static {p2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v1, 0x7f0c02ea

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 502
    :goto_0
    return-object v0

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/e/u;->s:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 480
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v5, 0x7f0c02e7

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v7

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :cond_3
    const-string/jumbo v0, "BlackBerry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v7

    invoke-virtual {v0, v9, v1}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_4
    const-string/jumbo v0, "WP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 491
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "Windows Phone"

    aput-object v2, v1, v7

    invoke-virtual {v0, v9, v1}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_5
    const-string/jumbo v0, "Bada"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "Samsung Bada"

    aput-object v2, v1, v7

    invoke-virtual {v0, v9, v1}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_6
    const-string/jumbo v0, "Windows 8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "Mac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 495
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v7

    invoke-virtual {v0, v10, v1}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 496
    :cond_8
    const-string/jumbo v0, "PC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "Windows PC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 497
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "a Windows PC"

    aput-object v2, v1, v7

    invoke-virtual {v0, v10, v1}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 499
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v1, 0x7f0c02ea

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(JZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const v1, 0x77029a7

    iget-object v2, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/e/u;->b(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/viber/voip/e/u;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3}, Lcom/viber/voip/e/u;->b(Z)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1128
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1129
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c062f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0c0630

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f02033d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1135
    const/16 v2, 0x141

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1136
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 712
    const-string/jumbo v0, "from_notification"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 713
    return-void
.end method

.method private a(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V
    .locals 3
    .parameter

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged updateServiceStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",showNotification:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/viber/voip/e/u;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 262
    sget-boolean v0, Lcom/viber/voip/e/u;->i:Z

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x0

    .line 264
    sget-object v1, Lcom/viber/voip/e/ab;->a:[I

    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 279
    :goto_0
    if-eqz v0, :cond_0

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIBER_SERVICE_FOREGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v0, "notification_id"

    const v2, 0x77029a7

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v2, 0x7f0c0374

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0203f2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v2, 0x7f0c0373

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0203f0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v2, 0x7f0c0372

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0203f1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/e/u;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/voip/e/u;->l()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/e/u;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/e/u;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/e/u;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p8}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/e/u;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/e/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 795
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 797
    const-string/jumbo v0, "recreateSmartNotification: showMessageNotification"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 799
    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    .line 809
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)I
    .locals 1
    .parameter

    .prologue
    .line 388
    if-eqz p1, :cond_0

    const v0, 0x7f0203f3

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0203ef

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/e/u;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/viber/voip/e/u;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/a/a;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    return-object v0
.end method

.method private b(JZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 400
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v1, 0x7f0c03d5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/viber/voip/w;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/e/u;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/e/u;->c(JZ)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/e/u;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/e/u;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 954
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 955
    const-string/jumbo v0, "restoreNotificationMessage: showMessageNotification"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 956
    const/4 v5, 0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    .line 965
    :cond_0
    return-void
.end method

.method private b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iget-object v2, p0, Lcom/viber/voip/e/u;->n:Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v2, Lcom/viber/voip/e/ad;

    iget-object v3, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/viber/voip/e/ad;-><init>(Landroid/content/res/Resources;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/ConversationEntity;ZZ)V

    .line 551
    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->a()Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->b()Ljava/lang/CharSequence;

    move-result-object v4

    .line 553
    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->c()Ljava/lang/CharSequence;

    move-result-object v6

    .line 555
    const-string/jumbo v3, "join"

    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "you_join"

    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v3

    if-nez v3, :cond_4

    .line 556
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/e/u;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 557
    if-nez v3, :cond_1

    .line 558
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 559
    iget-object v7, p0, Lcom/viber/voip/e/u;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 562
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v8

    .line 563
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    if-eqz v8, :cond_2

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 564
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    .line 568
    iget-object v4, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v7, 0x7f0c02cd

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v4, v7, v8}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v4, v5

    move-object v5, v3

    .line 591
    :goto_1
    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->e()I

    move-result v10

    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->d()Ljava/lang/String;

    move-result-object v12

    move-object v3, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v11, p4

    invoke-direct/range {v3 .. v12}, Lcom/viber/voip/e/u;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;IZLjava/lang/String;)Landroid/app/Notification;

    move-result-object v3

    .line 594
    if-nez v3, :cond_7

    .line 618
    :cond_3
    :goto_2
    return-void

    .line 570
    :cond_4
    if-nez p4, :cond_9

    .line 573
    if-nez p5, :cond_6

    .line 575
    const/4 v3, 0x0

    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1, v3}, Lcom/viber/voip/e/u;->d(JZ)V

    .line 577
    iget-object v3, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3}, Lcom/viber/voip/e/ac;->e()I

    move-result v3

    iput v3, p0, Lcom/viber/voip/e/u;->k:I

    .line 578
    const-wide/16 v7, -0x1

    cmp-long v3, p7, v7

    if-eqz v3, :cond_5

    .line 579
    iget-object v3, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const-string/jumbo v7, "smart"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 582
    :cond_5
    iget-object v3, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3}, Lcom/viber/voip/e/ac;->i()I

    move-result v3

    iput v3, p0, Lcom/viber/voip/e/u;->l:I

    .line 585
    :cond_6
    iget v3, p0, Lcom/viber/voip/e/u;->l:I

    const/4 v7, 0x1

    if-le v3, v7, :cond_9

    const-string/jumbo v3, "call"

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 586
    iget-object v3, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v5, 0x7f0c02b8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v9}, Lcom/viber/voip/e/ac;->i()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v7}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    goto :goto_1

    .line 596
    :cond_7
    if-eqz p5, :cond_8

    .line 597
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 601
    :cond_8
    :try_start_0
    iget-object v4, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/viber/voip/e/ad;->e()I

    move-result v2

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_3
    if-eqz p4, :cond_3

    if-nez p5, :cond_3

    .line 607
    const/4 v2, 0x0

    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/e/u;->c(JZ)V

    goto :goto_2

    .line 602
    :catch_0
    move-exception v2

    goto :goto_3

    :cond_9
    move-object v13, v4

    move-object v4, v5

    move-object v5, v13

    goto/16 :goto_1

    :cond_a
    move-object v3, v4

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 335
    iget-object v1, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const v2, 0x77029a7

    iget-object v3, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    iget-object v4, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v5, 0x7f0c03d3

    invoke-virtual {v4, v5}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0202ed

    invoke-interface {v3, v4, p1, v5, v0}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 337
    return-void
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 716
    const-string/jumbo v2, "from_notification"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private c(JZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x3

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateViberSmsNotification: lastMessageSmartDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/e/u;->d(JZ)V

    .line 740
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->e()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/e/u;->k:I

    .line 741
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->i()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/e/u;->l:I

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateViberSmsNotification: messagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/e/u;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " missedCallsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/e/u;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 745
    iget v0, p0, Lcom/viber/voip/e/u;->k:I

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 749
    :cond_0
    iget v0, p0, Lcom/viber/voip/e/u;->l:I

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const-string/jumbo v1, "missed_call"

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 753
    :cond_1
    iget v0, p0, Lcom/viber/voip/e/u;->l:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/viber/voip/e/u;->k:I

    if-eqz v0, :cond_3

    .line 754
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/e/u;->o()V

    .line 757
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/e/u;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/e/u;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 342
    iget-object v1, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const v2, 0x77029a7

    iget-object v3, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    iget-object v4, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v5, 0x7f0c03d4

    invoke-virtual {v4, v5}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020309

    invoke-interface {v3, v4, p1, v5, v0}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 344
    return-void
.end method

.method private d(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 812
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/e/u;->e(JZ)V

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/e/u;->g(J)V

    .line 814
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/e/u;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/voip/e/u;->p()V

    return-void
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallInProgress() contactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/viber/voip/e/u;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/viber/voip/e/u;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/e/u;->n:Ljava/util/HashSet;

    return-object v0
.end method

.method private e(JZ)V
    .locals 24
    .parameter
    .parameter

    .prologue
    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2}, Lcom/viber/voip/messages/controller/c/as;->l()Ljava/util/List;

    move-result-object v12

    .line 820
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 821
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 823
    const/4 v4, 0x0

    .line 824
    const/4 v3, 0x0

    .line 825
    const/4 v10, 0x1

    .line 826
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    .line 827
    const/4 v5, 0x0

    .line 828
    if-eqz v15, :cond_0

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-object v6, v2

    .line 830
    :goto_0
    if-eqz v6, :cond_b

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v2

    .line 835
    :goto_1
    const/4 v4, 0x0

    move v11, v4

    move-object v7, v2

    move-object v8, v3

    :goto_2
    if-ge v11, v15, :cond_8

    .line 837
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNotificationInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 840
    if-nez v11, :cond_1

    move-object v9, v8

    .line 841
    :goto_3
    if-nez v9, :cond_2

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    .line 835
    :goto_4
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    move-object v7, v3

    move-object v8, v4

    move-object v6, v2

    goto :goto_2

    .line 828
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 840
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v9

    goto :goto_3

    .line 845
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->x(J)I

    move-result v16

    .line 846
    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v17

    .line 848
    if-eqz v17, :cond_7

    .line 849
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v18

    .line 852
    if-ne v6, v2, :cond_3

    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_3

    move-wide/from16 v3, p1

    .line 858
    :goto_5
    const-wide/16 v20, 0x0

    cmp-long v20, v3, v20

    if-nez v20, :cond_5

    sub-long v20, v18, v3

    const-wide/32 v22, 0x493e0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_5

    cmp-long v3, v3, v18

    if-gtz v3, :cond_5

    .line 860
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    add-int v3, v5, v16

    .line 862
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/viber/voip/e/t;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v2, v1}, Lcom/viber/voip/e/t;-><init>(ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move v5, v3

    .line 873
    :goto_7
    if-nez p3, :cond_a

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v3

    move-object v4, v9

    goto :goto_4

    .line 855
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    const-wide/16 v3, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual {v9}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getSmartEventDate()J

    move-result-wide v3

    goto :goto_5

    .line 864
    :cond_5
    if-eqz p3, :cond_6

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    :cond_6
    move v3, v5

    goto :goto_6

    .line 868
    :cond_7
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    add-int v5, v5, v16

    .line 870
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/e/t;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v0, v2, v1}, Lcom/viber/voip/e/t;-><init>(ILcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 881
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    .line 882
    const/4 v2, 0x0

    .line 885
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3, v6}, Lcom/viber/voip/e/ac;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3, v5}, Lcom/viber/voip/e/ac;->a(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v3, v2}, Lcom/viber/voip/e/ac;->a(Z)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v2, v8}, Lcom/viber/voip/e/ac;->a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v2, v7}, Lcom/viber/voip/e/ac;->a(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 895
    return-void

    :cond_9
    move v2, v10

    goto :goto_8

    :cond_a
    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    goto/16 :goto_4

    :cond_b
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1124
    const/4 v0, 0x3

    const-string/jumbo v1, "Notifier"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/e/u;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/e/u;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/e/u;)Lcom/viber/voip/e/ac;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    return-object v0
.end method

.method private g(J)V
    .locals 13
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 899
    iget-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->n()Ljava/util/List;

    move-result-object v8

    .line 902
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 905
    if-eqz v9, :cond_0

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-object v7, v0

    .line 910
    :goto_0
    if-eqz v7, :cond_5

    .line 911
    iget-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    .line 912
    iget-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_1
    move v5, v3

    move v6, v3

    .line 915
    :goto_2
    if-ge v5, v9, :cond_3

    .line 917
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 918
    if-nez v5, :cond_1

    move-object v0, v2

    .line 920
    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadCallsCount()I

    move-result v0

    .line 921
    :goto_4
    add-int/2addr v6, v0

    .line 915
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_0
    move-object v7, v1

    .line 905
    goto :goto_0

    .line 918
    :cond_1
    iget-object v10, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    goto :goto_3

    :cond_2
    move v0, v3

    .line 920
    goto :goto_4

    .line 924
    :cond_3
    if-le v9, v4, :cond_4

    .line 928
    :goto_5
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0, v7}, Lcom/viber/voip/e/ac;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 929
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0, v6}, Lcom/viber/voip/e/ac;->b(I)V

    .line 930
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0, v3}, Lcom/viber/voip/e/ac;->b(Z)V

    .line 931
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0, v2}, Lcom/viber/voip/e/ac;->b(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 932
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0, v1}, Lcom/viber/voip/e/ac;->b(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 938
    return-void

    :cond_4
    move v3, v4

    goto :goto_5

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/viber/voip/util/gl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "initNotificationFactory: Expandable notification type"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/viber/voip/e/a/a/f;

    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/e/a/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const-string/jumbo v0, "initNotificationFactory: Advanced notification type"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/viber/voip/e/a/a/e;

    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/e/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    goto :goto_0

    .line 211
    :cond_1
    const-string/jumbo v0, "initNotificationFactory: Simple notification type"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/viber/voip/e/a/a/h;

    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/e/a/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/u;->a(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V

    .line 257
    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    const v5, 0x77029a7

    const/4 v4, 0x0

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 354
    iget-object v1, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/viber/voip/e/u;->b(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/viber/voip/e/u;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/viber/voip/e/u;->b(Z)I

    move-result v4

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 355
    sget-boolean v1, Lcom/viber/voip/e/u;->i:Z

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIBER_SERVICE_FOREGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v0, "notification_id"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 366
    const-string/jumbo v0, "onCallIdle , changing the icon"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 368
    sget-boolean v0, Lcom/viber/voip/e/u;->i:Z

    if-eqz v0, :cond_0

    .line 369
    const-string/jumbo v0, "onCallIdle , service icon will be shown"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/viber/voip/e/u;->j()V

    .line 379
    :goto_0
    return-void

    .line 372
    :cond_0
    const-string/jumbo v0, "onCallIdle , hiding the icon"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 373
    sget-boolean v0, Lcom/viber/voip/e/u;->i:Z

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const v1, 0x77029a7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 720
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareNotifications: isActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/viber/voip/e/u;->v:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/e/y;

    invoke-direct {v1, p0}, Lcom/viber/voip/e/y;-><init>(Lcom/viber/voip/e/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    :cond_0
    return-void
.end method

.method private o()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 761
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->f()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->a()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->b()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    const-string/jumbo v0, "recreateNotification: showMessageNotification"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->f()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->b()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->a()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->h()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->c()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->d()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    const-string/jumbo v0, "recreateNotification: showMissedCallNotification"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->h()Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->d()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/e/u;->u:Lcom/viber/voip/e/ac;

    invoke-virtual {v0}, Lcom/viber/voip/e/ac;->c()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v3

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/e/u;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    .line 791
    :cond_1
    return-void
.end method

.method private p()V
    .locals 8

    .prologue
    .line 941
    const-string/jumbo v0, "restoreSystemNotificaitons"

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/as;->m()Ljava/util/List;

    move-result-object v2

    .line 943
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 945
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 946
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 947
    iget-object v4, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v4

    .line 948
    iget-object v5, p0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v5

    .line 949
    invoke-direct {p0, v0, v4, v5}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 945
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 951
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v2

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 652
    const-string/jumbo v1, "navigated_to_conversation_on_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    return-object v0
.end method

.method public declared-synchronized a(J)V
    .locals 2
    .parameter

    .prologue
    .line 1102
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyConversationActive: conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 1103
    iput-wide p1, p0, Lcom/viber/voip/e/u;->q:J

    .line 1104
    iput-wide p1, p0, Lcom/viber/voip/e/u;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    monitor-exit p0

    return-void

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 18
    .parameter

    .prologue
    .line 978
    const-string/jumbo v1, ""

    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v1

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->n(J)Ljava/util/List;

    move-result-object v14

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v15

    .line 983
    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/e/u;->t:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    move-object v13, v1

    .line 985
    :goto_0
    if-nez v15, :cond_1

    .line 1025
    :goto_1
    return-void

    .line 983
    :cond_0
    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_0

    .line 989
    :cond_1
    invoke-virtual {v15}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 990
    invoke-virtual {v15}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v2, 0x7f0c04a3

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 997
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c0419

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/u;->f:Lcom/viber/voip/ViberApplication;

    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    const v2, 0x7f0c0417

    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1001
    if-eqz v13, :cond_6

    .line 1002
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v6

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactId()J

    move-result-wide v7

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getNativeContactId()J

    move-result-wide v9

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getContactName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static/range {v1 .. v12}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 1023
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const-string/jumbo v9, "message"

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    long-to-int v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    move-object v4, v13

    move-object v5, v15

    invoke-interface/range {v1 .. v7}, Lcom/viber/voip/e/a/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v8, v9, v10, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 990
    :cond_2
    invoke-virtual {v15}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 993
    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v13}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getRecipientNumber()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 998
    :cond_5
    const v2, 0x7f0c0416

    goto :goto_3

    .line 1012
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getGroupId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v15}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v6

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v1 .. v12}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    goto :goto_4
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/viber/voip/e/u;->y:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/viber/voip/e/u;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/e/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    :cond_0
    new-instance v0, Lcom/viber/voip/e/x;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/e/x;-><init>(Lcom/viber/voip/e/u;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;ZZZJ)V

    iput-object v0, p0, Lcom/viber/voip/e/u;->y:Ljava/lang/Runnable;

    .line 531
    iget-object v2, p0, Lcom/viber/voip/e/u;->v:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/e/u;->y:Ljava/lang/Runnable;

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    return-void

    .line 531
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/e/u;->d(J)V

    goto :goto_0

    .line 1031
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConversationShowed: showed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 1116
    iput-boolean p1, p0, Lcom/viber/voip/e/u;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    monitor-exit p0

    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/e/w;

    invoke-direct {v1, p0, p3}, Lcom/viber/voip/e/w;-><init>(Lcom/viber/voip/e/u;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 460
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const/4 v1, -0x4

    iget-object v2, p0, Lcom/viber/voip/e/u;->h:Lcom/viber/voip/e/a/a;

    invoke-interface {v2}, Lcom/viber/voip/e/a/a;->a()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 407
    return-void
.end method

.method public declared-synchronized b(J)V
    .locals 2
    .parameter

    .prologue
    .line 1109
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notyfyActiveConversationRemoved: previous active conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 1110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/e/u;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    monitor-exit p0

    return-void

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 433
    return-void
.end method

.method public c(J)V
    .locals 2
    .parameter

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/viber/voip/e/u;->o:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 467
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 507
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/e/u;->o:J

    .line 508
    return-void
.end method

.method public d(J)V
    .locals 2
    .parameter

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/viber/voip/e/u;->v:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/e/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/e/z;-><init>(Lcom/viber/voip/e/u;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1063
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/viber/voip/e/u;->o:J

    return-wide v0
.end method

.method public e(J)V
    .locals 2
    .parameter

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/viber/voip/e/u;->v:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/e/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/e/aa;-><init>(Lcom/viber/voip/e/u;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1084
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/viber/voip/e/u;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1088
    return-void
.end method

.method public declared-synchronized f(J)Z
    .locals 2
    .parameter

    .prologue
    .line 1097
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/e/u;->r:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/e/u;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()J
    .locals 3

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getActiveConversation: mConversationShowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/e/u;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mActiveConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/e/u;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 1092
    iget-boolean v0, p0, Lcom/viber/voip/e/u;->r:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/e/u;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()J
    .locals 2

    .prologue
    .line 1120
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/viber/voip/e/u;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-static {p1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->resolveEnum(I)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/u;->a(Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)V

    .line 253
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :try_start_0
    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->z()Z

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/viber/voip/e/u;->i:Z

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSharedPreferenceChanged showNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/viber/voip/e/u;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    invoke-direct {p0}, Lcom/viber/voip/e/u;->j()V

    .line 248
    :cond_0
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v2

    .line 236
    invoke-static {}, Lcom/viber/voip/settings/j;->y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v3

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSharedPreferenceChanged ClassCastException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",showNotification:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/e/u;->e(Ljava/lang/String;)V

    .line 238
    if-ne v3, v0, :cond_1

    :goto_2
    sput-boolean v0, Lcom/viber/voip/e/u;->i:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 245
    :cond_2
    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->l()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/e/u;->d:Z

    goto :goto_1
.end method
